FROM tomcat:latest
MAINTAINER M Rajeswari
COPY target/webapp.war /usr/local/tomcat/webapps
