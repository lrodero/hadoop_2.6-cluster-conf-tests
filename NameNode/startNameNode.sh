#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre
export PATH=$JAVA_HOME/bin:$PATH
export HADOOP_HOME=/home/lrodero/Software/hadoop-2.6.0
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export HADOOP_LOG_DIR=/home/lrodero/Software/hadoop-cluster-for-2.6/NameNode/log
export HADOOP_PID_DIR=/home/lrodero/Software/hadoop-cluster-for-2.6/NameNode/pid
export HADOOP_CONF_DIR=/home/lrodero/Software/hadoop-cluster-for-2.6/NameNode/etc/hadoop
export HADOOP_IDENT_STRING=SmallLocalCluster
/bin/bash hadoop-daemon.sh --script hdfs start namenode

