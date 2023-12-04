# 실전 카프카 개발부터 운영까지
### 실습 환경 Amazon Linux 2 환경을 Docker 컨테이너로 구현


### 방법 1. image 이용한 docker-compose
image: 
* heonseungkim/peter-ansible01.foo.bar:v1 
* heonseungkim/peter-kafka01.foo.bar:v1 
* heonseungkim/peter-kafka02.foo.bar:v1 
* heonseungkim/peter-kafka03.foo.bar:v1 
* heonseungkim/peter-zk01.foo.bar:v1 
* heonseungkim/peter-zk02.foo.bar:v1 
* heonseungkim/peter-zk03.foo.bar:v1 
```
$ git clone https://github.com/heonseungkim/amazonlinux2_kafka ./amazonlinux2_kafka
$ cd amazonlinux2_kafka
$ docker-compose up -d
[+] 
 ✔ Network amazonlinux2_kafka_peter-kafka-cluster  Created      0.0s 
 ✔ Container peter-zk01.foo.bar                    Started      0.4s 
 ✔ Container peter-zk02.foo.bar                    Started      1.4s 
 ✔ Container peter-ansible01.foo.bar               Started      0.4s 
 ✔ Container peter-kafka03.foo.bar                 Started      1.0s 
 ✔ Container peter-zk03.foo.bar                    Started      0.3s 
 ✔ Container peter-kafka02.foo.bar                 Started      1.2s 
 ✔ Container peter-kafka01.foo.bar                 Started      1.3s 

$ docker ps
CONTAINER ID   IMAGE                                     COMMAND        CREATED          STATUS          PORTS                    NAMES
e287a8619840   heonseungkim/peter-kafka03.foo.bar:v1     "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:9094->9092/tcp   peter-kafka03.foo.bar
f3bc1a520135   heonseungkim/peter-kafka02.foo.bar:v1     "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:9093->9092/tcp   peter-kafka02.foo.bar
b5980ea2ff5f   heonseungkim/peter-zk02.foo.bar:v1        "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:2182->2181/tcp   peter-zk02.foo.bar
7751c78d3625   heonseungkim/peter-ansible01.foo.bar:v1   "/sbin/init"   13 minutes ago   Up 13 minutes                            peter-ansible01.foo.bar
45099f26ed47   heonseungkim/peter-kafka01.foo.bar:v1     "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:9092->9092/tcp   peter-kafka01.foo.bar
27f94d754134   heonseungkim/peter-zk01.foo.bar:v1        "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:2181->2181/tcp   peter-zk01.foo.bar
b1ae5abe8258   heonseungkim/peter-zk03.foo.bar:v1        "/sbin/init"   13 minutes ago   Up 13 minutes   0.0.0.0:2183->2181/tcp   peter-zk03.foo.bar
```

### 이후 실습 내용을 진행하면 됩니다.
#### 다른 PC에서 안되면 어떡하지..
