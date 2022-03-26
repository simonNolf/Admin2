printf "build new image\n"
docker build -t mail2 ~/Admin2/DMZ/Mail/
printf "create new container\n"
docker run -tid --name mailCT2 mail2
