
k -n saturn get pod

k -n saturn describe pod # describe all pods, then manually look for it

# or do some filtering like this
k -n saturn get pod -o yaml | grep my-happy-shop -A10

k -n saturn get pod webserver-sat-003 -o yaml > 7_webserver-sat-003.yaml # export
vim 7_webserver-sat-003.yaml

k -n neptune create -f 7_webserver-sat-003.yaml

k -n neptune get pod | grep webserver

k -n saturn delete pod webserver-sat-003 --force --grace-period=0

k get pod -A | grep webserver-sat-003
