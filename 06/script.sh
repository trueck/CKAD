k run pod6 --image=busybox:1.31.0 --dry-run=client -o yaml --command -- sh -c "touch /tmp/ready && sleep 1d" > pod.yaml
k create -f pod.yaml