#!/bin/bash

echo ""
echo "--- LAUNCH ---"

# All JARs generated from child projects are copied in monitor\target\libs,
# so there is no need to dig in the child projects' target directories.
export MYCP=./monitor/target/*:./monitor/target/libs/*

#Java executable for standard Linux environment
export JAVA_EXE=java
#Java executable for MinGW environment
#export JAVA_EXE=/c/jdk1.8.0/bin/java.exe

echo " > run monitor"
echo ""

$JAVA_EXE -cp $MYCP monitor.Main

export MYCP=
