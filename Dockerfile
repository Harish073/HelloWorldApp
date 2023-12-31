# Use Tomcat as the base image
FROM tomcat:latest

# Remove default Tomcat applications


# Copy your .war file into the Tomcat webapps directory
COPY target/my-web-app.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
