FROM 		openjdk:27-ea-jdk-slim
WORKDIR 	.
COPY 		HelloWorld.java .
RUN 		javac HelloWorld.java
CMD 		["java", "HelloWorld"]
