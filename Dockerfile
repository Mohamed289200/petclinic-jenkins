FROM openjdk:17-alpine AS build

WORKDIR /app

COPY . .

WORKDIR /spring-petclinic

RUN ./mvnw package

FROM openjdk:17-alpine

WORKDIR /app

COPY --from=build /app/target/spring-petclinic-3.3.0-SNAPSHOT.jar .

EXPOSE 8080

CMD ["java","-jar","[91m/bin/sh: ./mvnw: not found-3.3.0-SNAPSHOT.jar"]

