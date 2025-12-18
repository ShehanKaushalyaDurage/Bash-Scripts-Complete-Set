#!/bin/bash
#auther : Shehan Kaushalya
#description: Production System Health Monitor
#date:18/12/2025

echo "==============================="
echo "Production System Health Monitor"
echo "==============================="

CPU_THRESHOLD=80
MEM_THRESHOLD=75
DISK_THRESHOLD=85
LOG_FILE="./system_health.log"

log() {
        echo "$(date '+%Y-%m-%d %H:%M:%S') | $1" | tee -a "$LOG_FILE"
}

CPU_USAGE=$(top -bn1 | awk '/Cpu/ {printf "%.0f", 100 - $8}')
MEM_USAGE=$(free | awk '/Mem/ {printf "%.0f", $3/$2 * 100}')
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

STATUS=0

log "CPU Usage: $CPU_USAGE%"
log "Memory Usage: $MEM_USAGE%"
log "Disk Usage: $DISK_USAGE%"


if (( CPU_USAGE > CPU_THRESHOLD )); then
  log "ALERT: High CPU usage"
  STATUS=2
fi

if (( MEM_USAGE > MEM_THRESHOLD )); then
  log "ALERT: High Memory usage"
  STATUS=2
fi

if (( DISK_USAGE > DISK_THRESHOLD )); then
  log "ALERT: High Disk usage"
  STATUS=2
fi

exit $STATUS

echo "==============================="
echo "End.."
echo "==============================="
