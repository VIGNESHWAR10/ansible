#!/bin/bash
export ENCRYPTION_KEY=$(head -c 32 /dev/urandom | base64)
export ETCD_NAME=$(hostname -s)
export EXPIRATION=$(date -u --date "+7 days" +"%Y-%m-%dT%H:%M:%SZ")
export LOADBALANCER=$(cat /etc/hosts | grep kube-loadbalancer | cut -d " " -f1)
export MASTER01=$(cat /etc/hosts | grep kube-master-1 | cut -d " " -f1)
export MASTER02=$(cat /etc/hosts | grep kube-master-2 | cut -d " " -f1)
export POD_CIDR="10.244.0.0/16"
export PRIMARY_IP=$(ip addr show enX0 | grep -w "inet" | awk '{print$2 }' | cut -d "/" -f1)
export SERVICE_CIDR="10.96.0.0/24"
export API_SERVICE=$(echo $SERVICE_CIDR | awk 'BEGIN {FS="."} ; { printf("%s.%s.%s.1", $1, $2, $3) }')
export CLUSTER_DNS=$(echo $SERVICE_CIDR | awk 'BEGIN {FS="."} ; { printf("%s.%s.%s.10", $1, $2, $3) }')