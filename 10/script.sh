k -n pluto run project-plt-6cc-api --image=nginx:1.17.3-alpine --labels project=plt-6cc-api

k -n pluto expose pod project-plt-6cc-api --name project-plt-6cc-svc --port 3333 --target-port 80

k -n pluto get pod,svc | grep 6cc

k -n pluto describe svc project-plt-6cc-svc

k -n pluto get ep


k run tmp --restart=Never --rm --image=nginx:alpine -i -- curl http://project-plt-6cc-svc.pluto:3333

k -n pluto logs project-plt-6cc-api > /opt/course/10/service_test.log