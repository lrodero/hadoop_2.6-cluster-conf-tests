# hadoop_2.6-cluster-conf-tests
Settings to have a full hadoop cluster running in local machine, and scripts to ease handling it.

Although Hadoop clusters are not conveived to be run in a single machine, it is possible to have all required nodes in the same host. However, achieving that is not trivial and a bit cumbersome.

This project contains a set of config files, folders and scripts to ease that task, so you can have one small HDFS cluster (one NameNode and two DataNodes) running in your machine with no effort. It is intended for Linux systems. It has been tested only in Ubuntu, although other distros should work as fine. Also, it has been tested only for Hadoop 2.6 (other 'close' distros, for some definition of close, should work too).

These scripts assume you have Java and  `$JAVA_HOME` and `$HADOOP_HOME` properly set. Then, to have your HDFS mini cluster running you only need to:

```bash
$ git clone https://github.com/lrodero/hadoop_2.6-cluster-conf-tests.git
$ cd hadoop_2.6-cluster-conf-tests/
$ ./startAll.sh
```

Likewise, in the same folder than `startAll.sh` yo will find `stopAll.sh` that will stop all nodes in the cluster (if they are running) and `clearAllData.sh` that removes _all_ data of the HDFS system (it calls `stopAll.sh` first) so you can easily start with a new brand cluster whenever you want.

In `hadoop_2.6-cluster-conf-tests/NameNode`, `hadoop_2.6-cluster-conf-tests/DataNode1` and `hadoop_2.6-cluster-conf-tests/DataNode2` you will find all data folders (for logs, pids, tmp, data...) required by each node, along with some scripts to start and stop each node (`startNameNode.sh`, etc). In fact, `startAll.sh` and `stopAll.sh` just call the required scripts in those subfolders.
