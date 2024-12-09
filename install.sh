#安装prometheus
helm install prometheus ./prometheus-24.3.0.tgz -n monitoring --create-namespace

#
helm install kubernetes-dashboard ./kubernetes-dashboard-7.5.0.tgz -n kubernetes-dashboard --create-namespace

#
