k -n sun create deployment sunny --image=nginx:1.17.3-alpine $do > p2_sunny.yaml


k create -f p2_sunny.yaml

k -n sun get pod

k -n sun expose deployment sunny --name sun-srv --port 9999 --target-port 80

k run tmp --restart=Never --rm -i --image=nginx:alpine -- curl -m 5 sun-srv.sun:9999

kubectl -n sun get deployment sunny