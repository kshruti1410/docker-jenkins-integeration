FROM openjdk:7
EXPOSE 8080
ADD target/docker-jenkins-integeration.jar docker-jenkins-integeration.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integeration.jar"]