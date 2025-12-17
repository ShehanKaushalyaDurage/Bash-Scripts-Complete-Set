#!/bin/bash

THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "WARNING : Disk usage is ${USAGE}%"
else
        echo "Disk usage is normal: ${USAGE}%"
fi

DATE=$(date)

echo "Done $DATE"
