# docker安装与初始化

## Docker是什么

> **Docker**属于 [Linux容器](https://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html) 的一种封装，提供简单易用的容器使用接口。它是目前最流行的**Linux容器**解决方案。

Docker 将应用程序与该程序的依赖，打包在一个文件里面。运行这个文件，就会生成一个虚拟容器。程序在这个虚拟容器里运行，就好像在真实的物理机上运行一样。有了 Docker，就不用担心环境问题。


## 安装与初始化脚本()

- 基于[ansible](ansible.md)的部署方式:

[docker.yaml](//gist.githubusercontent.com/tudyzhb/64f8b650684c3816962452e2557dbb6e/raw/2fa54b78abaa4192894163e085387bccb4fbca47/docker.yaml ':include :type=code')
