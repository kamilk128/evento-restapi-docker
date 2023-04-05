FROM openjdk:latest

RUN if [ -e ".env" ]; then COPY .env /.env; fi

COPY evento-restapi-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app.jar"]
