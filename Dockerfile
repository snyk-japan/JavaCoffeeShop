FROM maven:3.10.0-eclipse-temurin-27-resolute
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn package -DskipTests
CMD mvn spring-boot:run
EXPOSE 8081
