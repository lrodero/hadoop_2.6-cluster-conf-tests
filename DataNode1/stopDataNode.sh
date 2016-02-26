#!/bin/bash
if [ -z "$JAVA_HOME" ]; then
  echo "Must set JAVA_HOME env variable (e.g. /usr/lib/jvm(java-8-oracle/jre)"
  exit 1
fi
if [ -z "$HADOOP_HOME" ]; then
  echo "Must set HADOOP_HOME env variable (e.g. /home/user/Software/hadoop-2.6.0)"
  exit 1
fi
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export HADOOP_LOG_DIR=/home/lrodero/Software/repositories/lrodero/hadoop_2.6-cluster-conf-tests/DataNode1/log
export HADOOP_PID_DIR=/home/lrodero/Software/repositories/lrodero/hadoop_2.6-cluster-conf-tests/DataNode1/pid
export HADOOP_CONF_DIR=/home/lrodero/Software/repositories/lrodero/hadoop_2.6-cluster-conf-tests/DataNode1/etc/hadoop
export HADOOP_IDENT_STRING=SmallLocalCluster
/bin/bash hadoop-daemon.sh --script hdfs stop datanode

