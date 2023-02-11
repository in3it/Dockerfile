FROM ubuntu:latest
RUN  apt-get update 
RUN  apt install default-jre -y 
RUN  apt install default-jdk -y 
RUN  javac -version
RUN  mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz .
RUN tar -xvfz apache-tomcat-9.0.71.tar.gz
RUN mv apache-tomcat-9.0.71/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
