
k -n sun get pod --show-labels

k -n sun get pod -l type=runner

k -n sun label pod -l type=runner protected=true # run for label runner
k -n sun label pod -l type=worker protected=true # run for label worker

or 

k -n sun label pod -l "type in (worker,runner)" protected=true

k -n sun annotate pod -l protected=true protected="do not delete this pod"

k -n sun get pod -l protected=true -o yaml | grep -A 8 metadata:
