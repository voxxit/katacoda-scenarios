# Clear old files from the working directory
rm -rf /root/*

# Make sure the permissions are right
chown -R 1000:1000 /root

# Reset the Docker environment
docker rm -fv $(docker ps -a -q)