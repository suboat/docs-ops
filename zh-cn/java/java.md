## 为什么选择Java

> 有AOP特性，有Spring全家桶；生态牢固，轮子多，人才充沛。

## 通过docker发布

>  推荐通过docker发布java应用。点击[查看docker介绍](../docker.md)。

### Dockerfile编写

> 可以将每个jar版本编译到**不同镜像**，也可以编译一个**通用镜像**然后映射不同的jar路径(版本)。

- Dockerfile实例:

[Dockerfile](Dockerfile ':include :type=dockerfile')

- Dockerfile编译:

[Dockerfile.sh](Dockerfile.sh ':include :type=bash')

### docker-entrypoint.sh编写

> 需要依据实际执行环境做对应的修改，如*JVM优化*等。

[docker-entrypoint.sh](docker-entrypoint.sh ':include :type=bash')

- `-Dspring.profiles.active="prod"`指明运行环境

- `-Dspring.config.location="application-prod.yml"`指明外部配置文件

## 通过kubernetes发布

>  推荐通过kubernetes发布到集群。点击[查看kubernetes介绍](../kubernetes.md)。

### Service+Deployment

- `Service+Deployment`部署举例:

[k8s.yaml](k8s.yaml ':include :type=yaml')

  执行`kubectl apply -f project.yaml`部署。
