#!/bin/bash
TEMP_WAR_FILE_PATH="tmp/codedeploy"
WAR_FILE="ROOT.war"

sudo rm -rf /usr/share/tomcat/webapps/ROOT
sudo mv $TEMP_WAR_FILE_PATH/$WAR_FILE /usr/share/tomcat/webapps/$WAR_FILE
sudo service tomcat start