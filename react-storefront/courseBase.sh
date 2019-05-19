# Reset the Docker environment
docker rm -fv $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker system prune --all --force

# Download the required image
docker pull ubuntu:xenial