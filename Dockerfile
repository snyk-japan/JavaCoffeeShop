FROM maven:3.9.13-eclipse-temurin-25-noble
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn package -DskipTests
CMD mvn spring-boot:run
EXPOSE 8081
