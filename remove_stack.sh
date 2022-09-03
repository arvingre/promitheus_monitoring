docker stack rm mon
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker system df
#docker volume ls |awk ' NR >1  {print $2}' |xargs docker volume rm 