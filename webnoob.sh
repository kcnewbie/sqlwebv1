#!/bin/bash
#thanks to NMAP

echo  "     WebAppNoob v.1 Scanner     "
echo  " -----------------------------------"
echo  " | usage: ./webnoob.sh -s site.com | "
echo  " -----------------------------------"


case $1 in
        -s)  nmap -sV --script=http-enum $2> output.txt  ;;

esac

sed -n '6,300p' output.txt

