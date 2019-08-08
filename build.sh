#!bin/bash

export CLASSPATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home/lib/servlet-api.jar

CPATH=$(pwd)
DIST_PATH=$CPATH/dist

cd $CPATH/src && javac *.java
cd $CPATH/src && mv *.class $DIST_PATH/WEB-INF/classes/
cd $DIST_PATH && jar cfM ROOT.war *
cd $CPATH && docker-compose up --build
