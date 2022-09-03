```shell
 # sed  -i  's/^SELINUX=.*/SELINUX=permissive/g'  /etc/selinux/config
 # echo "vm.max_map_count=262144" >> /etc/sysctl.conf
 # yum -y install  yum-utils device-mapper-persistent-data lvm2

# 卸载旧版 docker：

```
    docker service rm $(docker service ls |awk ' NR >1 {print $1}')
    docker kill $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q)
    docker volume rm $(docker volume ls | awk ' NR >1 {print $2}')
    docker system df

    systemctl stop docker
    rm -rf /etc/docker
    rm -rf /run/docker
    rm -rf /var/lib/dockershim
    rm -rf /var/lib/docker
    umount /var/lib/docker/devicemapper
    yum list installed | grep docker
    yum remove docker-ce*


````

 yum-config-manager   --add-repo    https://download.docker.com/linux/centos/docker-ce.repo

 yum list docker-ce  --showduplicates| sort  -r
 yum -y install docker-ce-20.10.17-3.el7
 systemctl start docker
 systemctl  enable  docker

 #curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

 #chmod +x /usr/local/bin/docker-compose

 #firewall-cmd --zone=public --add-port=2377/tcp --permanent
 # firewall-cmd --reload

 # docker swarm  init    --advertise-addr  15.164.40.8:2377
 sh deploy.sh