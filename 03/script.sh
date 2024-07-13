k get po -n neptune --show-labels

k get po -n neptune -l job-name=neb-new-job

k delete po -n neptune -l job-name=neb-new-job
k delete job neb-new-job -n neptune

k -n neptune create job neb-new-job --image=busybox:1.31.0 $do > job.yaml -- sh -c "sleep 2 && echo done"

k get job -n neptune
k get po -n neptune -l job-name=neb-new-job

k -n neptune get pod,job | grep neb-new-job
k -n neptune describe job neb-new-job