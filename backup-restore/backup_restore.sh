#!/bin/bash
#auther : Shehan Kaushalya
#description: Backup + Restore Automation
#date:18/12/2025

BACKUP_DIR="./backups"
SOURCE_DIR="./data"
lOG_FILE="./backup.log"
RETENTION_DATE=7

mkdir -p "$BACKUP_DIR"

log() {
        echo "$(date '+%F %T') | $1" | tee -a "$lOG_FILE"
}

backup(){
        FILE="$BACKUP_DIR/backup_$(date '+%F_%H-%M').tar.gz"
        tar -czf "$FILE" "$SOURCE_DIR"
        log "Backup created: $FILE"

        find "$BACKUP_DIR" -type f -mtime +$RETENTION_DAYS -delete
        log "Old backups cleaned"
}

restore() {
  if [[ ! -f $1 ]]; then
    log "Restore failed: File not found"
    exit 1
  fi
  tar -xzf "$1"
  log "Restore completed from $1"
}

case $1 in
  backup) backup ;;
  restore) restore "$2" ;;
  *)
    echo "Usage: $0 {backup|restore <file>}"
    exit 1
esac
