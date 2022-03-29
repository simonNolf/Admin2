printf "stop docker container\n"
docker stop mailCT
printf "delete container and image\n"
docker rm mailCT
docker rmi mail

printf "build new image\n"
docker build -t mail ~/Admin2/DMZ/Mail
printf "create new container\n"
docker run -tid -p 993:993 -p 143:143 -p 995:995 -p 110:110 -p 25:25 --name mailCT mail
