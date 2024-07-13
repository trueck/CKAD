k -n pluto get all -o wide

k run tmp --restart=Never --rm -i --image=nginx:alpine -- curl -m 5 10.12.2.15

k run tmp --restart=Never --rm --image=busybox -i -- wget -O- 10.12.2.15

k -f /opt/course/p1/project-23-api-new.yaml apply

k -n pluto get pod


k -n pluto describe pod project-23-api-5b4579fd49-8knh8 | grep Liveness