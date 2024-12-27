FROM openjdk:23

WORKDIR /app

COPY target/devops-integration.jar /app/devops-integration.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
