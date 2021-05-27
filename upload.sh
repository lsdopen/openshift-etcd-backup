#!/bin/bash

set -eu

echo "Sending backups to S3..."

aws s3 sync /backup s3://$S3_BUCKET/etcd --region=${AWS_DEFAULT_REGION} --expires "$(date -d '+7 days' --utc +'%Y-%m-%dT%H:%M:%SZ')"