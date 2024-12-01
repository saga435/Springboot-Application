# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output JAR file to the container
# Note: Update 'target/spring-embedded-h2-db-0.0.1-SNAPSHOT.jar' with the actual location and name of the JAR
COPY target/spring-embedded-h2-db-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port (default Spring Boot port is 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
