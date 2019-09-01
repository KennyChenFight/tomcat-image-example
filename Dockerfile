FROM ubuntu:latest
MAINTAINER kenny
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN cd /
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.24/bin/apache-tomcat-9.0.24.tar.gz  
RUN tar zxvf apache-tomcat-9.0.24.tar.gz
CMD ["/apache-tomcat-9.0.24/bin/catalina.sh", "run"]