k get pv -n earth
k get pvc -n earth

k create -f 12-pv.yaml
k create -f 12-pvc.yaml
k -n earth get pv,pvc

k -n earth create deploy project-earthflower --image=httpd:2.4.41-alpine $do > 12_dep.yaml
k -f 12_dep.yaml create

k get po -n earth
k -n earth describe pod project-earthflower-d6887f7c5-pn5wv | grep -A2 Mounts: