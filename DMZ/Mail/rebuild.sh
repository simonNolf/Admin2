#!/bin/bash
docker stop mail
docker rm mail
docker rmi mail

docker build -t mail ~/Admin2/DMZ/Mail
docker run -tid -p 25:25/tcp -p 110:110/tcp -p 143:143/tcp --name mail mail

