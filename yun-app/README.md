## GetStart

快速开始 https://helm.sh/zh/docs/
客户端下载 https://github.com/helm/helm/releases

# 检查

helm lint PATH [flags]
eg: helm lint app

# 本地渲染模板

helm template [NAME] [CHART] [flags]
eg: helm template app

# 安装

helm install [NAME] [CHART] [flags]
eg: helm install app ./app
