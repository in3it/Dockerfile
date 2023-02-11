FROM ubuntu:latest
RUN  apt-get update
RUN  apt-get install default-jre -y 
RUN  apt-get install default-jdk -y 
RUN  javac -version
RUN  mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN apt-get install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.5/bin/apache-tomcat-10.1.5.tar.gz /opt/tomcat
RUN tar -xvfz apache-tomcat-9.0.71.tar.gz
RUN mv apache-tomcat-9.0.71/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
