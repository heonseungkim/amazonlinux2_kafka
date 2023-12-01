# 실전 카프카 개발부터 운영까지
### 실습 환경 Amazon Linux 2 환경을 Docker 컨테이너로 구현

```
$ git clone https://github.com/heonseungkim/amazonlinux2_kafka ./amazonlinux2_kafka
$ cd amazonlinux2_kafka
$ chmod +x build-aml2.sh
$ ./build-aml2.sh
...
$ docker ps
CONTAINER ID   IMAGE                         COMMAND        CREATED          STATUS          PORTS     NAMES
802090e74063   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-zk03.foo.bar
e4f40b888c16   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-zk02.foo.bar
3caf1d0e42fd   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-zk01.foo.bar
2e422984b8a3   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-kafka03.foo.bar
35b3fe9475f6   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-kafka02.foo.bar
c832d250109f   ansible-slave:amazonlinux2    "/sbin/init"   17 minutes ago   Up 17 minutes             peter-kafka01.foo.bar
fceddb85f21c   ansible-master:amazonlinux2   "/sbin/init"   17 minutes ago   Up 17 minutes             peter-ansible01.foo.bar

# ansible 컨테이너 접속 (꼭 ec2-user로 접속하기)
$ docker exec -it --user ec2-user peter-ansible01.foo.bar /bin/bash

# 각 인스턴스에 ssh로 접근하여 known_hosts 파일을 갱신하기
$ ssh ec2-user@peter-kafka01.foo.bar
... (yes/no) # enter yes
$ ssh ec2-user@peter-kafka02.foo.bar
... (yes/no) # enter yes
$ ssh ec2-user@peter-kafka03.foo.bar
... (yes/no) # enter yes
$ ssh ec2-user@peter-zk01.foo.bar
... (yes/no) # enter yes
$ ssh ec2-user@peter-zk02.foo.bar
... (yes/no) # enter yes
$ ssh ec2-user@peter-zk03.foo.bar
... (yes/no) # enter yes

```

### 이후 실습 내용을 진행하면 됩니다.
#### 다른 PC에서 안되면 어떡하지..