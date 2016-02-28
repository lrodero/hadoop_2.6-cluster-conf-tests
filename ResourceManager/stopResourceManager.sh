#!/bin/bash
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # folder where _this_ script is
if [ -z "$JAVA_HOME" ]; then
  echo "Must set JAVA_HOME env variable (e.g. /usr/lib/jvm/java-8-oracle/jre)"
  exit 1
fi
if [ -z "$HADOOP_HOME" ]; then
  echo "Must set HADOOP_HOME env variable (e.g. /home/user/Software/hadoop-2.6.0)"
  exit 1
fi
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export YARN_LOG_DIR=$DIR/log
export HADOOP_PID_DIR=$DIR/pid
export YARN_CONF_DIR=$DIR/etc/hadoop
#export YARN_RESOURCEMANAGER_OPTS="-Ddfs.namenode.name.dir=$DIR/data -Dhadoop.tmp.dir=$DIR/tmp"
export YARN_IDENT_STRING=SmallLocalCluster
/bin/bash yarn-daemon.sh stop resourcemanager

