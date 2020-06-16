ETCD="http://$ETCD0:2379,http://$ETCD1:2379,http://$ETCD2:2379"
ETCD_VER="v3.4.4"
ETCD_DOWNLOAD_URL="https://storage.googleapis.com/etcd"

ETCD_NETLOC=$(sed 's!http://!!g' <<<$ETCD) # 10.0.0.1:2379,..

STATSD="127.0.0.1:8125"

ERU_CORE="127.0.0.1:5001"
ERU_CORE_NAME="eru_core"
ERU_CORE_IMAGE="projecteru2/core"
ERU_BIND=":5001"
ERU_SHARES="100"
ERU_POD="testpod"
ERU_NODE="testnode"

ERU_AGENT_LOGS="tcp://127.0.0.1:5144"
ERU_AGENT_LISTEN="127.0.0.1:12345"
ERU_AGENT_ETC="/etc/eru/agent.yaml"

CALICOCTL_VER=v3.4.0
CALICO_NODE=v3.4
CALICO_POOL_CIDR=10.213.0.0/16
CALICO_POOL_NAME=testpool

IP=$(ip route get 1 | awk '{print $NF;exit}')

