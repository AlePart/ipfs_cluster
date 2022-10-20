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
    sed -i 's,/ip4/127.0.0.1/tcp/5001,/ip4/0.0.0.0/tcp/5001,g' ./ipfs/config
    
fi

echo "IPFS START CLUSTER"
NOW=`date '+%F_%H:%M:%S'`
echo "$NOW" >> logstart.log
ipfs-cluster-service daemon  & 

echo "IPFS START DAEMON"
ipfs daemon
