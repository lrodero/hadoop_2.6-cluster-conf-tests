#!/bin/bash
./stopHDFS.sh
rm -fr ./DataNode1/data/*
rm -fr ./DataNode1/log/*
rm -fr ./DataNode1/pid/*
rm -fr ./DataNode1/tmp/*
rm -fr ./DataNode2/data/*
rm -fr ./DataNode2/log/*
rm -fr ./DataNode2/pid/*
rm -fr ./DataNode2/tmp/*
./NameNode/formatFS.sh

