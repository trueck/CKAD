k delete po pod1 --force --grace-period=0

k run pod1 --image=httpd:2.4.41-alpine --restart=Never --dry-run=client -o yaml > pod1.yaml

k create -f pod1.yaml

kubectl -n default describe pod pod1 | grep -i status:

kubectl -n default get pod pod1 -o jsonpath="{.status.phase}"