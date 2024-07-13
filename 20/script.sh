k -n venus get all

k -n venus run tmp --restart=Never --rm -i --image=busybox -i -- wget -O- frontend:80


k -n venus run tmp --restart=Never --rm --image=busybox -i -- wget -O- api:2222


k -n venus exec frontend-789cbdc677-c9v8h -- wget -O- www.google.com

k -n venus exec frontend-789cbdc677-c9v8h -- wget -O- api:2222

k -f 20_np1.yaml create

k -n venus exec frontend-789cbdc677-c9v8h -- wget -O- www.google.de

k -n venus exec frontend-789cbdc677-c9v8h -- wget -O- -T 5 www.google.de:80

k -n venus exec frontend-789cbdc677-c9v8h -- wget -O- api:2222