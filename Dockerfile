FROM openjdk:11
#VOLUME /tmp
EXPOSE 8082
ARG JAR_FILE=target/rating-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} rating.jar
ENTRYPOINT ["java","-jar","/rating.jar"]