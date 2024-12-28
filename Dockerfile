FROM amazoncorretto:17-alpine-jdk

# Set the working directory
WORKDIR /app

# Copy the JAR file
COPY target/social-media-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
# EXPOSE 8000

# Set the entrypoint
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

