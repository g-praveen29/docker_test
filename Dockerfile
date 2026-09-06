# Use an official OpenJDK image as base
FROM eclipse-temurin:21-jdk 
# Set the working directory inside the container
WORKDIR /app
# Copy the Java file to the container
COPY Hello.java .
# Compile the Java file
RUN javac Hello.java
# Default command (can be overridden)
# CMD ["java", "Hello"]
# Set entrypoint and allow arguments
ENTRYPOINT ["java", "Hello"]
