FROM openjdk:8
EXPOSE 8080
ADD target/virtualZoo-0.0.1-SNAPSHOT.jar virtualZoo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/virtualZoo-0.0.1-SNAPSHOT.jar"]