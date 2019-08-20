#!bin/bash

CPATH=$(pwd)
export CLASSPATH=$CPATH/lib/servlet-api.jar
DIST_PATH=$CPATH/dist

cd $CPATH/src && javac *.java
cd $CPATH/src && mv *.class $DIST_PATH/WEB-INF/classes/
cd $DIST_PATH && jar cfM ROOT.war *
