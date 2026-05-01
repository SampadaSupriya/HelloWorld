FROM 		openjdk:27-ea-jdk-slim
WORKDIR 	/app
COPY 		HelloWorld.java /app
RUN 		javac HelloWorld.java
CMD 		["java", "HelloWorld"]
