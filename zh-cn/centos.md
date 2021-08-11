# CentOS

## CentOS是什么

> CentOS，是 [红帽企业 Linux（RHEL）](https://www.redhat.com/zh/technologies/linux-platforms/enterprise-linux) 的源代码修改后的开源免费版，稳定性非常好。
> 和Ubuntu不同的是，CentOS主要用于服务器而不是桌面环境。

## 为什么选择CentOS7

> 由于CentOS最新版操作系统CentOS8原生不支持docker(替换为还未广泛适配的podman)，所以目前生产部署环境仍以CentOS7进行讨论。 

## 部署理念与步骤

### 系统基础配置

1. 更新系统补丁至最新版。
2. 安装常用运维工具。
3. 开启 [SELinux](https://www.redhat.com/zh/topics/linux/what-is-selinux) 并切换至*permissive*或*enforcing*。
4. 尝试挂载数据盘。

### 系统集群配置

当生产环境决定暂不需要使用集群部署时，以下步骤可跳过。

5. 将 [SELinux](https://www.redhat.com/zh/topics/linux/what-is-selinux) 关闭或调整至*permissive*
6. 搭建集群内的DNS服务器（基于[v2ray](https://github.com/v2fly/v2ray-core) 软件），便于在各种网络环境内配置可替换的高可用节点。

## 开始系统初始化

### 基于Ansible的初始化

> 点击[Ansible](ansible.md)查看介绍。

1. 更新系统补丁、安装常用运维工具、配置防火墙等:

[boot.yaml](//gist.githubusercontent.com/tudyzhb/c9d29c80498cc3e9267e7060a2302429/raw/boot.yaml ':include :type=code')

2. 开启 *SELinux* 并配置为 *permissive* :

[selinux.yaml](//gist.githubusercontent.com/tudyzhb/c9d29c80498cc3e9267e7060a2302429/raw/selinux.yaml ':include :type=code')

3. 尝试挂载数据盘到 */data/* 目录

[selinux.yaml](//gist.githubusercontent.com/tudyzhb/c9d29c80498cc3e9267e7060a2302429/raw/data.yaml ':include :type=code')

