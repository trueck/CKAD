
k create -f 13-sc.yaml

k create ns moon

k create -f 13-pvc.yaml 

k get pvc -n moon

k -n moon describe pvc moon-pvc-126
