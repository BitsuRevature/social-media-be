# Use a base image with Java installed
FROM openjdk:17-jdk-slim


ARG JAR_FILE=target/*.jar

# Copy the JAR file into the container
COPY ${JAR_FILE} app.jar

# Expose the port that your Spring Boot app runs on
EXPOSE 8080

# Set the entrypoint to run your Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]