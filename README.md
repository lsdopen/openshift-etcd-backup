# OpenShift ETCD Backup

This image can be used to backup ETCD (copies are stored on all masters) and then uploaded to an object storage of your choice (S3 only at the moment).

## Setup

1. Create a backup project.
2. Create CronJob that runs as often as you want to backup ETCD.
3. Add SCC to user to allow privileged access.
3. Enjoy.

## Configuration

If you're using AWS S3 for storage you need to add the following environment variables to the CronJob pod:
 
`S3_BUCKET`
`AWS_SECRET_ACCESS_KEY`
`AWS_ACCESS_KEY_ID`
`AWS_DEFAULT_REGION`

## Roadmap

- Support GCP Cloud Storage
- Support on-prem object storage
- Remove old backups

## Contributing

If you want to add to this project or find a bug, please open an issue or even a PR. All contributions are welcome (but may be discussed).
