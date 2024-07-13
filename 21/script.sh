k -n neptune create deploy neptune-10ab --image=httpd:2.4-alpine $do > 21.yaml

k create -f 21.yaml # namespace already set in yaml

k -n neptune get pod | grep neptune-10ab