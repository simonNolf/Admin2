docker stop dnsCT
docker rm dnsCT
docker rmi dns

docker build -t dns ~/Admin2/DMZ/SOA-externe/
docker run -tid --name dnsCT dns