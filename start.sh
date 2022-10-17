#!/bin/bash
FILE=/root/.init
echo "NODE STARTING"
if test -f "$FILE"; then
    echo "IPFS NODE INIT"
    ipfs init
    sleep 2
    echo "IPFS CLUSTER INIT"
    ipfs-cluster-service init -f
    touch logstart.log
    rm $FILE
    
    
fi

echo "IPFS START CLUSTER"
sleep 10
NOW=`date '+%F_%H:%M:%S'`
echo "$NOW" >> logstart.log
ipfs-cluster-service daemon  & 

echo "IPFS START DAEMON"
ipfs daemon
