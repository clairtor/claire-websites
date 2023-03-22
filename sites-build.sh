#!/bin/bash
cd src

echo
echo "com.clairecode"
echo
hugo --environment claire-websites --configDir sites/com.clairecode/config
echo
echo "---------------------------------------------------"

echo
echo "com.clairtor"
echo
hugo --environment claire-websites --configDir sites/com.clairtor/config
echo
echo "---------------------------------------------------"

cd sites/com.clairtor.journal
echo
echo "com.clairtor.journal"
echo 
# hugo --environment claire-websites --configDir sites/com.clairtor.journal/config
hugo --environment claire-websites
echo
echo "---------------------------------------------------"

cd ../../..