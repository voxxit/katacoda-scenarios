# Clear old files from the working directory
rm -rf myapp/

# Reset the Docker environment
docker rm -fv $(docker ps -a -q)