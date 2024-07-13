
k -n moon create configmap configmap-web-moon-html --from-file=index.html=/opt/course/15/web-moon.html # important to set the index.html key
k get cm configmap-web-moon-html -n moon -o yaml

k -n moon get pod
k -n moon rollout restart deploy web-moon


k -n moon get pod -o wide # get pod cluster IPs

k run tmp --restart=Never --rm -i --image=nginx:alpine -- curl 10.44.0.78

k -n moon exec web-moon-c77655cc-dc8v4 find /usr/share/nginx/html


k -n moon describe pod web-moon-c77655cc-dc8v4 | grep -A2 Mounts:
