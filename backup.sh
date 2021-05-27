#!/bin/bash

set -eu

oc get no -l node-role.kubernetes.io/master --no-headers -o name | xargs -I {} --  oc debug {} -- bash -c 'chroot /host sudo -E /usr/local/bin/cluster-backup.sh /home/core/backup/ && chroot /host sudo -E find /home/core/backup/ -type f -mtime +7 -delete'