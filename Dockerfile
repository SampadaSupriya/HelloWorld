FROM openjdk:17-jdk
COPY HelloWorld.java /app/
WORKDIR /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]

