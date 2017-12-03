#!/bin/bash
sudo apt-get update
sudo apt-get install curl openjdk-8-jdk
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp
curl -O http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.0.47/bin/apache-tomcat-8.0.47.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo cp ~/gits/deepbox/tomcat.service /etc/systemd/system/tomcat.service
sudo systemctl daemon-reload
sudo systemctl enable tomcat


