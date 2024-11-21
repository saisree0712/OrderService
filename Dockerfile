# Use an OpenJDK base image
FROM openjdk:17-jdk-slim



# Copy the Spring Boot JAR file into the container
ADD target/order-service.jar order-service.jar

# Expose the application port
EXPOSE 5001

# Command to run the application
ENTRYPOINT ["java", "-jar", "/order-service.jar"]