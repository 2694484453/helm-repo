mklink C:\Users\Administrator\.kube\config D:\project\helm-repo\config
#安装prometheus
helm install prometheus ./prometheus-24.3.0.tgz -n monitoring --create-namespace

#安装stack
helm install prometheus ./kube-prometheus-stack -n monitoring
helm upgrade prometheus ./kube-prometheus-stack -n monitoring
helm uninstall prometheus ./kube-prometheus-stack -n monitoring
kubectl apply -f D:\project\helm-repo\kube-prometheus-stack\charts\crds\crds --server-side

#安装dashboard
helm install kubernetes-dashboard ./kubernetes-dashboard-7.5.0.tgz -n kubernetes-dashboard --create-namespace
helm install kubernetes-dashboard ./kubernetes-dashboard -n kubernetes-dashboard --create-namespace
helm uninstall kubernetes-dashboard -n kubernetes-dashboard

#
helm repo add k8s-dashboard https://kubernetes.github.io/dashboard
helm install kubernetes-dashboard k8s-dashboard/kubernetes-dashboard --version 7.10.0 -n kubernetes-dashboard --create-namespace
helm upgrade

#
helm repo add kubegemsapp https://charts.kubegems.io/kubegemsapp

#安装skywalking
helm install skywalking kubegemsapp/skywalking --version 8.9.1 -n skywalking --create-namespace
helm install skywalking ./skywalking -n skywalking --create-namespace
helm upgrade skywalking ./skywalking -n skywalking
helm uninstall skywalking -n skywalking
#
helm install velero ./velero -n velero --create-namespace
#
helm install code-server ./ide/code-server -n code-server --create-namespace

helm upgrade code-server ./ide/code-server -n code-server

#安装opentelemetry
helm install opentelemetry ./opentelemetry-operator -n opentelemetry --create-namespace --kubeconfig ./config
helm upgrade opentelemetry ./opentelemetry-operator -n opentelemetry
kubectl apply -f ./opentelemetry-operator/conf/crds --kubeconfig ./config
