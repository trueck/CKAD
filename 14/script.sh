k -n moon create secret generic secret1 --from-literal user=test --from-literal pass=pwd

k get secret -n moon
k get secret secret1 -n moon -o yaml
echo 'dGVzdA==' | base64 --decode


k -n moon -f /opt/course/14/secret2.yaml create
k -n moon get secret

k -f /opt/course/14/secret-handler.yaml delete --force --grace-period=0
k -f /opt/course/14/secret-handler-new.yaml create
or 
k -f /opt/course/14/secret-handler-new.yaml replace --force --grace-period=0

k -n moon exec secret-handler -- env | grep SECRET1

k -n moon exec secret-handler -- find /tmp/secret2 

k -n moon exec secret-handler -- cat /tmp/secret2/key
