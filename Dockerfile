# write your Docker file code here
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar todo-application.jar
EXPOSE 8081
CMD ["java","*.jar","todo-application.jar"]
