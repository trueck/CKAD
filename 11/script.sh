docker build -t registry.killer.sh:5000/sun-cipher:latest -t registry.killer.sh:5000/sun-cipher:v1-docker .

docker images|grep killer

docker push registry.killer.sh:5000/sun-cipher:latest
docker push registry.killer.sh:5000/sun-cipher:v1-docker


podman build -t registry.killer.sh:5000/sun-cipher:v1-podman .

podman image ls

podman push registry.killer.sh:5000/sun-cipher:v1-podman

podman run -d --name sun-cipher registry.killer.sh:5000/sun-cipher:v1-podman

podman ps

podman ps > /opt/course/11/containers

podman logs sun-cipher

podman logs sun-cipher > /opt/course/11/logs

