#!/bin/bash
OS_TAG=amazonlinux2

# image alias
MASTER_IMAGE_NAME=aml2-ansible-master
SLAVE_IMAGE_NAME=aml2-ansible-slave
MASTER_NAME=ansible-master
SLAVE_NAME=ansible-slave

# domain alias
DOMAIN_ANSIBLE_1=peter-ansible01.foo.bar
DOMAIN_KAFKA_1=peter-kafka01.foo.bar
DOMAIN_KAFKA_2=peter-kafka02.foo.bar
DOMAIN_KAFKA_3=peter-kafka03.foo.bar
DOMAIN_ZOOKEEPER_1=peter-zk01.foo.bar
DOMAIN_ZOOKEEPER_2=peter-zk02.foo.bar
DOMAIN_ZOOKEEPER_3=peter-zk03.foo.bar

# container name alias
NAME_ANSIBLE_1=peter-ansible01
NAME_KAFKA_1=peter-kafka01
NAME_KAFKA_2=peter-kafka02
NAME_KAFKA_3=peter-kafka03
NAME_ZOOKEEPER_1=peter-zk01
NAME_ZOOKEEPER_2=peter-zk02
NAME_ZOOKEEPER_3=peter-zk03

# ip alias
IP_ANSIBLE_1=172.17.0.2
IP_KAFKA_1=172.17.0.3
IP_KAFKA_2=172.17.0.4
IP_KAFKA_3=172.17.0.5
IP_ZOOKEEPER_1=172.17.0.6
IP_ZOOKEEPER_2=172.17.0.7
IP_ZOOKEEPER_3=172.17.0.8

# build docker image
docker build $MASTER_IMAGE_NAME -t $MASTER_NAME:$OS_TAG && \
docker build $SLAVE_IMAGE_NAME -t $SLAVE_NAME:$OS_TAG && \

# run with privileged option
docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_ANSIBLE_1 \
-h $DOMAIN_ANSIBLE_1 \
$MASTER_NAME:$OS_TAG /sbin/init && \

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_KAFKA_1 \
-p 9092:9092 \
-h $DOMAIN_KAFKA_1 \
$SLAVE_NAME:$OS_TAG /sbin/init  && \

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_KAFKA_2 \
-p 9093:9092 \
-h $DOMAIN_KAFKA_2 \
$SLAVE_NAME:$OS_TAG /sbin/init && \

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_KAFKA_3 \
-p 9094:9092 \
-h $DOMAIN_KAFKA_3 \
$SLAVE_NAME:$OS_TAG /sbin/init && \

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_ZOOKEEPER_1 \
-h $DOMAIN_ZOOKEEPER_1 \
$SLAVE_NAME:$OS_TAG /sbin/init && \

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_ZOOKEEPER_2 \
-h $DOMAIN_ZOOKEEPER_2 \
$SLAVE_NAME:$OS_TAG /sbin/init

docker run \
--privileged \
-d \
--add-host "$DOMAIN_ANSIBLE_1  $NAME_ANSIBLE_1":$IP_ANSIBLE_1 \
--add-host "$DOMAIN_KAFKA_1    $NAME_KAFKA_1":$IP_KAFKA_1 \
--add-host "$DOMAIN_KAFKA_2    $NAME_KAFKA_2":$IP_KAFKA_2 \
--add-host "$DOMAIN_KAFKA_3    $NAME_KAFKA_3":$IP_KAFKA_3 \
--add-host "$DOMAIN_ZOOKEEPER_1       $NAME_ZOOKEEPER_1":$IP_ZOOKEEPER_1 \
--add-host "$DOMAIN_ZOOKEEPER_2       $NAME_ZOOKEEPER_2":$IP_ZOOKEEPER_2 \
--add-host "$DOMAIN_ZOOKEEPER_3       $NAME_ZOOKEEPER_3":$IP_ZOOKEEPER_3 \
--name $DOMAIN_ZOOKEEPER_3 \
-h $DOMAIN_ZOOKEEPER_3 \
$SLAVE_NAME:$OS_TAG /sbin/init
