helm repo list

helm repo update

helm search repo nginx

helm -n mercury install internal-issue-report-apiv1 bitnami/nginx
helm -n mercury install internal-issue-report-apiv2 bitnami/nginx
helm -n mercury install internal-issue-report-app bitnami/nginx

helm -n mercury upgrade internal-issue-report-apiv2 bitnami/nginx

helm -n mercury ls


helm -n mercury uninstall internal-issue-report-apiv1