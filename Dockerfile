FROM openjdk:8
EXPOSE 8080
ADD target/virtual-zoo.jar virtual-zoo.jar
ENTRYPOINT ["java","-jar","/virtual-zoo.jar"]