#!/bin/sh

CP=$(echo `find lib -name '*.jar'`|sed 's/ /:/g')

rm -f lib/wrk-1.0.jar
javac -cp $CP `find src -name '*.java'`
jar cvf lib/wrk-1.0.jar -C src/main/java .
