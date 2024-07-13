k -n neptune get deploy # overview
k -n neptune rollout -h
k -n neptune rollout history -h

k -n neptune rollout history deploy api-new-c32

k -n neptune get deploy,pod | grep api-new-c32


k -n neptune describe pod api-new-c32-7d64747c87-zh648 | grep -i error

k -n neptune describe pod api-new-c32-7d64747c87-zh648 | grep -i image

k -n neptune rollout undo deploy api-new-c32

k -n neptune get deploy api-new-c32

k -n neptune get rs -o wide | grep api-new-c32
