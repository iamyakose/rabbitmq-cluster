#!/bin/sh

# RabbitMQ console at `http://localhost:15672/` with the credential `admin:Admin@123`.


docker exec -ti rabbitmq-node-2 bash -c "rabbitmqctl stop_app"
docker exec -ti rabbitmq-node- bash -c "rabbitmqctl reset"
docker exec -ti rabbitmq-node-2 bash -c "rabbitmqctl join_cluster rabbit@rabbitmq-node-1"
docker exec -ti rabbitmq-node-2 bash -c "rabbitmqctl start_app"


# 2.

docker exec -ti rabbitmq-node-3 bash -c "rabbitmqctl stop_app"
docker exec -ti rabbitmq-node-3 bash -c "rabbitmqctl reset"
docker exec -ti rabbitmq-node-3 bash -c "rabbitmqctl join_cluster --ram rabbit@rabbitmq-node-1"
docker exec -ti rabbitmq-node-3 bash -c "rabbitmqctl start_app"
