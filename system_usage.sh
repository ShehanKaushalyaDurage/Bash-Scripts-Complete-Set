#!/bin/bash
#auther : Shehan Kaushalya
#description: user system usage check up
#date:17/12/2025

function systemlog(){
echo
echo "======================= Checking system stats ========================================"
echo

echo "user disk space "
du -h
echo

echo "user ram usage"
free -h
echo

echo "user system usage top"
top -b -n 2
echo

echo
echo "System checkup sucess"

}
systemlog
