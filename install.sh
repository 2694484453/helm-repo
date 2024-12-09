#安装prometheus
helm install prometheus ./prometheus-24.3.0.tgz -n monitoring --create-namespace

#
helm install kubernetes-dashboard ./kubernetes-dashboard-7.5.0.tgz -n kubernetes-dashboard --create-namespace
helm install kubernetes-dashboard ./kubernetes-dashboard -n kubernetes-dashboard --create-namespace
helm uninstall kubernetes-dashboard -n kubernetes-dashboard
#
helm repo add k8s-dashboard https://kubernetes.github.io/dashboard
helm install kubernetes-dashboard k8s-dashboard/kubernetes-dashboard --version 7.10.0 -n kubernetes-dashboard --create-namespace
helm upgrade

#
helm repo add kubegemsapp https://charts.kubegems.io/kubegemsapp
helm install skywalking kubegemsapp/skywalking --version 8.9.1 -n skywalking --create-namespace
helm upgrade skywalking ./skywalking -n skywalking
#
helm install velero ./velero -n velero --create-namespace
