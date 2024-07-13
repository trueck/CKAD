k -f init-container.yaml create

k -n mars get pod -o wide # to get the cluster IP

k run tmp --restart=Never --rm -i --image=nginx:alpine -- curl 10.0.0.67