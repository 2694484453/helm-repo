# helm-repo

### 介绍

> 个人helm-chart仓库

> artifacts地址 https://artifacthub.io/packages/search?ts_query_web=gpg-dev&sort=relevance&page=1

> index目录：https://dev-gpg.oss-cn-hangzhou.aliyuncs.com/helm-charts/index.yaml

### 软件架构

> Just for helm-chart & kubernetes

### 运行环境
> 条件1：linux或windows平台

> 条件2：下载并安装helm

### 使用说明
#### 添加仓库
``` text
helm repo add gpg-dev https://dev-gpg.oss-cn-hangzhou.aliyuncs.com/helm-charts
```
#### 安装chart应用
```text
helm install release gpg-dev/xxx
```
#### 更新仓库
```text
helm repo update
```
#### 更新当前索引
```text
helm repo index .
```
### 参与贡献
gaopuguang（2694484453@qq.com）
