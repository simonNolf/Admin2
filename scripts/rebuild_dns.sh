printf "stop docker container\n"
docker stop dnsCT
printf "delete container and image\n"
docker rm dnsCT
docker rmi dns

printf "build new image\n"
docker build -t dns ~/Admin2/DMZ/SOA-externe/
printf "create new container\n"
docker run -tid -p 53:53/udp -p 53:53/tcp -p 127.0.0.1:953:953/tcp --name dnsCT dns
