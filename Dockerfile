# Use Tomcat as the base image
FROM tomcat:latest

# Remove default Tomcat applications


# Copy your .war file into the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/myapp/target/my-web-app.war /opt/tomcat/apache-tomcat-10.1.17/webapps

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
