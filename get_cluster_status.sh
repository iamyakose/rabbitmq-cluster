#!/bin/sh
#Check the cluster status:
docker exec -ti rabbitmq-node-1 bash -c "rabbitmqctl cluster_status"
