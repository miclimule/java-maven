FROM adoptopenjdk/openjdk11:alpine-jre

RUN mkdir -p /app

# Définissez ce répertoire comme répertoire de travail
WORKDIR /app


ARG artifact=target/spring-boot-web.jar

COPY ${artifact} app.jar

# Exposez le port sur lequel votre application Spring Boot écoute (par défaut, c'est le port 8080)
EXPOSE 8080

# Démarrez votre application en utilisant la commande java -jar
CMD ["java", "-jar", "app.jar"]
