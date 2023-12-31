# Use a base image with Java installed
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY myapp.war /app

# Expose the port your application uses
EXPOSE 8081

# Command to run the application when the container starts
CMD ["java", "-war", "myapp.war"]
