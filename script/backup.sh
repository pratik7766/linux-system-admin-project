 #!/bin/bash

SOURCE_DIR="${1:-/etc}"
BACKUP_DIR="$HOME/linux-system-admin-project/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

mkdir -p "$BACKUP_DIR"

echo "=============================="
echo "       BACKUP STARTED"
echo "=============================="

echo "Source: $SOURCE_DIR"
echo "Destination: $BACKUP_FILE"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
    echo "Backup file: $BACKUP_FILE"
    echo "Backup size: $(du -h "$BACKUP_FILE" | cut -f1)"

    echo "Verifying archive..."

    tar -tzf "$BACKUP_FILE" >/dev/null

    if [ $? -eq 0 ]; then
        echo "Verification: SUCCESS"
    else
        echo "Verification: FAILED"
        exit 1
    fi
else
    echo "Backup failed."
    exit 1
fi

echo "=============================="
