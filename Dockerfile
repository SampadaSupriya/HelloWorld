# Option 1: Full JDK
FROM openjdk:17-jdk

# Option 2: Slim version (smaller size)
# FROM openjdk:17-slim

COPY HelloWorld.java /app/
WORKDIR /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]

