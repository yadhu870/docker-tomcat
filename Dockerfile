# Use the official Tomcat image from Docker Hub
FROM tomcat:latest


# Copy data into the container image directory
COPY ./conf /usr/local/tomcat/
COPY ./webapps /usr/local/tomcat/

# Set the working directory to Tomcat's webapps directory
WORKDIR /usr/local/tomcat/webapps

# Expose Tomcat default port
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]

