#!/bin/bash

# root
if [[ `whoami` != "root" ]];then
  echo "root permission required"
fi

export NETPOOL=10.213.0.0/16
export NETNAME="etest"

docker run -it --rm \
    --net host \
    projecteru2/cli \
    eru-cli container deploy --pod eru --entry minions \
    --network host --image projecteru2/minions \
    --cpu 0.05 --mem 104857600 --env ETCD_ENDPOINTS=http://${ERU_ETCD} https://goo.gl/P6AH7x

docker network create --driver calico --ipam-driver calico-ipam --subnet ${NETPOOL} ${NETNAME}
