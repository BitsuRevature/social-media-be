FROM openjdk:23

WORKDIR /target

COPY target/social-media-0.0.1-SNAPSHOT.jar social-media-be-devops.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/target/social-media-be-devops.jar"]