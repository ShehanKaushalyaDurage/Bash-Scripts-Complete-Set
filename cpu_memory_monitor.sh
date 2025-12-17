#!/bin/bash

echo

echo "CPU Usage :"
top -b -n1 | grep "Cpu(s)"

echo
echo

echo "Memory usage :"
free -h

echo
