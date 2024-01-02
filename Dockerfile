# Use Tomcat as the base image
FROM tomcat:latest

WORKDIR /opt/tomcat/apache-tomcat-10.1.17/webapps
# Copy your .war file into the Tomcat webapps directory
COPY target/my-web-app.war /opt/tomcat/apache-tomcat-10.1.17/webapps

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container launches
CMD ["startup.sh", "run"]
