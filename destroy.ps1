terraform -chdir=environments/production destroy -var="kubeconfig_path=$ENV:KUBECONFIG"
