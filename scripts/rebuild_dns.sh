printf "stop docker container\n"
docker stop dnsCT
printf "delete container and image\n"
docker rm dnsCT
docker rmi dns

printf "build new image\n"
docker build -t dns ~/Admin2/DMZ/SOA-externe/
printf "create new container\n"
docker run -tid --name dnsCT dns
