#!/bin/bash
#auther : Shehan Kaushalya
#description: Log Analyzer + Alert System
#date:18/12/2025

LOG_FILE=$1
ERROR_THRESHOLD=5

if [[ ! -f $LOG_FILE ]]; then
  echo "Log file not found"
  exit 1
fi

TOTAL=$(wc -l < "$LOG_FILE")
ERRORS=$(grep -i "error" "$LOG_FILE" | wc -l)
WARNINGS=$(grep -i "warn" "$LOG_FILE" | wc -l)
INFOS=$(grep -i "info" "$LOG_FILE" | wc -l)

TOP_ERROR=$(grep -i "error" "$LOG_FILE" | awk '{$1=""; print}' | sort | uniq -c | sort -nr | head -1)

echo "Total lines: $TOTAL"
echo "Errors: $ERRORS"
echo "Warnings: $WARNINGS"
echo "Info: $INFOS"
echo "Top Error: $TOP_ERROR"

if (( ERRORS > ERROR_THRESHOLD )); then
  echo "ALERT: Error threshold exceeded"
  exit 2
fi

exit 0

