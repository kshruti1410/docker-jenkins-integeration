FROM openjdk:8
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java
CMD ["java", "Main"]
EXPOSE 8080
ADD target/docker-jenkins-integeration.jar docker-jenkins-integeration.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integeration.jar"]