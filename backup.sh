#!/bin/bash

LOG_DIR="/home/ubuntu"
BACKUP_DIR="/home/ubuntu/bkup"

TIMESTAMP=$(date "+%Y%m%d%H%M%S")

mkdir -p "$BACKUP_DIR"

cp "$LOG_DIR/application.log" "$BACKUP_DIR/application_backup_$TIMESTAMP.log"

echo "LOG BACKUP is completed at $(date)"

find "$BACKUP_DIR" -name "application_backup_*" -type f -mmin +2 -exec rm {} \;
