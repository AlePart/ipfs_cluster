# ipfs_cluster

The given docker-compose.yaml use 1 different networks called net_1 a persistent external volume node_1 used for initialization and starting

you must Clone this repo than
you must create 1 volumes with the following command

```
docker volume create node_1
```
and the networks
```
docker network create --driver=bridge --subnet=192.168.1.0/24 net_1
```
copy the start.sh and the .init in the given node_1 node_2 external volumes
```
cp ./.init /var/lib/docker/volumes/node_1/_data
cp ./start.sh /var/lib/docker/volumes/node_1/_data
```
change user privileages to execution to start.sh
```
chmod u+x /var/lib/docker/volumes/node_1/_data/start.sh
```

Pull the image
```
docker pull alepart/ipfs_cluster:1.0
```

run container with compose
```
docker compose up
```

with
```
docker exec -it  ipfs_cluster-C-1  /bin/bash
```
you should be able to modify configuration of cluster and ipfs
