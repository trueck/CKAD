k -f /opt/course/9/holy-api-deployment.yaml create

k -n pluto get pod | grep holy


k -n pluto delete pod holy-api --force --grace-period=0