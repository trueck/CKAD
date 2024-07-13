k -f leaner-new.yaml apply

k -n mercury rollout history deploy cleaner

k -n mercury get pod


k -n mercury logs cleaner-576967576c-cqtgx -c logger-con