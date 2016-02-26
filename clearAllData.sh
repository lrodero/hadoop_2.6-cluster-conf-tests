#!/bin/bash
./stopAll.sh
./NameNode/formatFS.sh
rm -fr ./DataNode1/data/*
rm -fr ./DataNode2/data/*

