# FROM openjdk:17-jdk-alpine

# WORKDIR /app/

# COPY target/*.jar app.jar

# ENTRYPOINT ["java","-jar","/app/app.jar"]


##########

#
# Build stage
#
FROM maven:3.9.2-eclipse-temurin-17-alpine AS build
WORKDIR /app/
COPY src /app/src
COPY pom.xml /app/
RUN mvn -f /app/pom.xml clean package

#
# Package stage
#
FROM openjdk:17-jdk-alpine
COPY --from=build /app/target/*.jar /usr/local/lib/app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]