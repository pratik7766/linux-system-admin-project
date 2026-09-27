# Backup & Recovery

## Objective

Created an automated backup script to archive important Linux system/project data and verify the backup archive.

## Backup Script

Script: `script/backup.sh`

The script:

- Accepts a source directory as an argument.
- Creates a timestamped `.tar.gz` backup.
- Stores backups in the `backups/` directory.
- Displays backup information.
- Verifies the generated archive after backup creation.
- Reports backup success or failure.

## Backup Verification

The backup archive was successfully created and verified using:

`tar -tzf`

The archive contents were checked without extracting the archive.

## Recovery Testing

A separate test directory was created:

`/tmp/backup-restore-test`

The latest backup archive was extracted into the test directory to verify that the backup could be successfully restored.

## Result

Backup creation, archive verification, and recovery testing were successfully completed.

## Security Note

Backup archives are excluded from Git tracking using `.gitignore` to avoid committing generated backup files to the repository.
