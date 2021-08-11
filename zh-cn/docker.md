# docker安装与初始化

## Docker是什么

> **Docker**属于 [Linux容器](https://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html) 的一种封装，提供简单易用的容器使用接口。它是目前最流行的**Linux容器**解决方案。

Docker 将应用程序与该程序的依赖，打包在一个文件里面。运行这个文件，就会生成一个虚拟容器。程序在这个虚拟容器里运行，就好像在真实的物理机上运行一样。有了 Docker，就不用担心环境问题。

## 部署理念与步骤

1. 优先考虑安装**docker-ce** ( [docker发行版有所区别](https://medium.com/devops-dudes/2020-differences-between-docker-ce-and-ee-abd10b646597) )。
2. docker运行产生的文件应该保存在数据盘而非系统盘，即系统初始化好的目录[/data/docker/](centos.md)。
3. 每个docker容器(不包括k8s的使用场景)的运行都应该在 */data/docker/sh/* 目录有对应的启动脚本，且脚本具备幂等性。[查看例子](#Examples)

## docker安装

- 基于[Ansible](ansible.md)的部署方式:

[docker.yaml](//gist.githubusercontent.com/tudyzhb/64f8b650684c3816962452e2557dbb6e/raw/docker.yaml ':include :type=code')

## 容器创建

> 所有容器均在目录[/data/docker/](centos.md)下创建与维护。

### Examples

1. mariadb/mysql实例:

- */data/docker/sh/mariadb.sh* 文件:

[mariadb.sh](//gist.githubusercontent.com/tudyzhb/c7a647518bd7936650cec24d8129ff13/raw/mariadb.sh ':include :type=code')

- */data/docker/con/maria/conf.d/prod.cnf* 文件:

[prod.cnf](//gist.githubusercontent.com/tudyzhb/c7a647518bd7936650cec24d8129ff13/raw/prod.cnf ':include :type=code')

