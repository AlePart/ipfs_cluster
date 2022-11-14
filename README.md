# ipfs_cluster

Pull the image
```
docker pull alepart/ipfs_cluster:1.2
```
run container with compose
```
sudo docker run -d --restart=always --name ipfs_cluster_1 -v v_1:/root -v v_2:/root/.ipfs -v v_3:/root/.ipfs-cluster  alepart/ipfs_cluster:1.2  /bin/bash -c /root/start.sh

```

to get the shell you may use a command like this
```
sudo docker exec -it  ipfs_cluster_1  /bin/bash
```
