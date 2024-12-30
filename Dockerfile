FROM openjdk:23


ADD target/social-media-0.0.1-SNAPSHOT.jar.original social-media-0.0.1-SNAPSHOT.jar.original

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/social-media-0.0.1-SNAPSHOT.jar.original"]