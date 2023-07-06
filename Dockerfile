
FROM ubuntu:rolling

# Install OpenJDK 17
RUN apt-get update && apt-get install -y openjdk-17-jdk

COPY target/depl-0.0.1-SNAPSHOT.jar depl-0.0.1-SNAPSHOT.jar

# Set the working directory to /app
# WORKDIR /app

# Run the application using the java command
ENTRYPOINT ["java", "-jar", "/depl-0.0.1-SNAPSHOT.jar"]
