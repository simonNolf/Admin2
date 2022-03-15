# Admin2
projet d'administration des réseau 2 dans la carde des cours à l'EPHEC

## Commandes docker utile

 * Créer une image : `docker build -t [image-name] .`
 * Créer un container : `docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]`
 * Executer des commande dans un container : `docker exec -it [container-name] bash`
 * Afficher les containers : `docker ps -a`

## Ajouter docker au sudo
`sudo groupadd docker`

`sudo gpasswd -a [user] docker`
