FROM amazoncorretto:17-alpine-jdk
WORKDIR /app
COPY target/social-media-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENV DB_DATABASE=jdbc:mysql://localhost:3306/socialmedia
ENV DB_USER=root
ENTRYPOINT ["java", "-jar", "/app.jar"]

