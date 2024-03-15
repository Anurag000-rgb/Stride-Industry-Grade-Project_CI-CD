FROM docker.io/library/ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz /tmp/apache-tomcat-9.0.87.tar.gz
RUN cd /tmp &&  tar xvfz apache-tomcat-9.0.87.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.87/* /usr/local/tomcat/
# RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY **/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run

# **/*.war
