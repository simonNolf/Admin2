printf "stop docker container\n"
docker stop mailCT
printf "delete container and image\n"
docker rm mailCT
docker rmi mail

printf "build new image\n"
docker build -t mail ~/Admin2/DMZ/Mail
printf "create new container\n"
docker run -tid --name mailCT mail
