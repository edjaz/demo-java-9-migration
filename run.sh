#!/bin/bash

echo ""
echo "--- LAUNCH ---"

#Java executable for standard Linux environment
export JAVA_EXE=java
#Java executable for MinGW environment
#export JAVA_EXE=/c/jdk9/bin/java.exe

echo " > run monitor"
echo ""

# the classpath is needed for Spark's dependencies
$JAVA_EXE \
	--class-path 'build/class-path/*' \
	--module-path build/module-path \
	--add-modules monitor.observer.alpha,monitor.observer.beta \
	--add-modules monitor.utils,monitor.statistics \
	--add-modules monitor.rest \
	--add-modules java.xml.bind \
	monitor.Main
