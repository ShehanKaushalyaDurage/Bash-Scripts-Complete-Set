#!/bin/bash
#auther : Shehan Kaushalya
#description: CPU and Memory Usage Monitoring Script
#date:17/12/2025

echo

echo "CPU Usage :"
top -b -n1 | grep "Cpu(s)"

echo
echo

echo "Memory usage :"
free -h

echo
