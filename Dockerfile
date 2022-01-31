#docker build -t [microservice-name]-[version] -f Dockerfile .
FROM openjdk:11-jre
# Microservicio port3123213
EXPOSE 8080

ADD ${PATH_JAR_FILE} /app/app.jar
# Fix zona horaria de Chile
RUN apt-get update && apt-get install -y tzdata
ENV TZ America/Santiago


WORKDIR /app
CMD java -Djava.security.egd=file:/dev/./urandom ${JAVA_OPTS} -jar app.jar
