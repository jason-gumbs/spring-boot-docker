FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=spring-boot-app/target/spring-boot-docker.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]