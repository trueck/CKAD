k -n jupiter get all

k -n jupiter run tmp --restart=Never --rm -i --image=nginx:alpine -- curl -m 5 jupiter-crew-svc:8080

k -n jupiter edit service jupiter-crew-svc


k -n jupiter get svc

k -n jupiter run tmp --restart=Never --rm -i --image=nginx:alpine -- curl -m 5 jupiter-crew-svc:8080



k get nodes -o wide

curl 192.168.100.11:30100

k -n jupiter get pod jupiter-crew-deploy-8cdf99bc9-klwqt -o yaml | grep nodeName

k -n jupiter get pod -o wide # or even shorter
