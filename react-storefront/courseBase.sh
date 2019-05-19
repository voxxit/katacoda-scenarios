# need to reset the *entire* environment

docker rm -fv $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
