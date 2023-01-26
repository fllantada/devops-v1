# Crea el volumen que vamos a utilizar lo llama nexus-data
docker volume create --name nexus-data
docker run -d -p 8081:8081 -p 8082:8082 -p 8083:8083 --name nexus -v nexus-data:/nexus-data sonatype/nexus3



#Sacar la password de adentro del contenedor de nexus con este comando
docker exec -it nexus cat /nexus-data/admin.password 


#me fijo si estan bindeados los puertos que pedi con
#es como hacer un netstat -natup | grep 8081

sudo fuser -n tcp 8083

sudo fuser -n tcp 8082

sudo fuser -n tcp 8081

#ps -ef | grep 8081   Esto lo que hace es mostrar todos los procesos y saber detalles de los mismos

#Me logueo al nexus al docker-hosted repository ---->  docker login -u admin -p superhacker localhost:8083

#curl ifconfig.me se usa para saber mi ip publica 

# configuracion nexus repositories 1) docker-hosted/docker-pvt Puerto:  8081 2) enable docker v1 API  

#   ejemplo flaskapi creamos la imagen con el build y hacemos un tag. El tag es docker tag flaskapi localhost:8083



