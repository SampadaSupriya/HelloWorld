FROM 		openjdk:27-ea-jdk-slim
WORKDIR 	/app
COPY 		Hello.java .
RUN 		javac Hello.java
CMD 		["java", "Hello"]
