docker stack rm mon
docker service rm $(docker service ls |awk ' NR >1 {print $1}')
docker kill $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker system df