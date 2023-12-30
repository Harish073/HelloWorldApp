# Use the official Tomcat 9 image as the base image
FROM tomcat:9-jdk11-openjdk-slim

# Copy the WAR file into the webapps directory of Tomcat
COPY ./target/HelloWorldApp.war /usr/local/tomcat/webapps/
