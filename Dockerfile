FROM quay.io/openshift/origin-cli:4.7

RUN dnf install python3-pip
RUN pip3 install awscli --upgrade

COPY entrypoint.sh .
COPY backup.sh .
COPY upload.sh .

RUN chmod +x entrypoint.sh
RUN chmod +x backup.sh
RUN chmod +x upload.sh

RUN mkdir /backups
RUN chgrp -R 0 /backups && \
    chmod -R g=u /backups

CMD [ "./entrypoint.sh" ]
