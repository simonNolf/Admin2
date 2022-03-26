





printf "build new image\n"
docker build -t dns2 ~/Admin2/DMZ/SOA-externe/
printf "create new container\n"
docker run -tid -p 53:53/udp -p 53:53/tcp -p 127.0.0.1:953:953/tcp --name dnsCT2 dns2
