k -n neptune get sa # get overview
k -n neptune get secrets # shows all secrets of namespace
k -n neptune get secrets -o yaml | grep annotations -A 1 # shows secrets with first annotation

k -n neptune get secret neptune-secret-1 -o yaml

k -n neptune describe secret neptune-secret-1

or
base64 -d