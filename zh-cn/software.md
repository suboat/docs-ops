# MariaDB介绍

> MariaDB是MySQL的分支版本

MariaDB主要是由于MySQL在被Oracle公司收购时出现的问题而开发的，
现已在Debian、Ubuntu、CentOS等著名开源操作系统中成为默认数据库。

得益于mariadb-connector-cpp使用LGPL开源协议，我们可以安全的开发需要保护源代码的商用软件。
与此同时，MySQL生态下的工具链也都可以在MariaDB开发下使用。

随着MariaDB的不断发展，已经明显展现出一些优于MySQL的特性与性能。
集群方面，MariaDB通过Galera Cluster实现多主集群，
同时允许在客户端、集群、内核、存储上进行扩展，
轻松支持从联机事务处理（OLTP）到联机分析处理（OLAP）的各种用例。
