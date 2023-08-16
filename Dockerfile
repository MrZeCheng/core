FROM 192.168.101.30/devops/openjdk:8-jre-alpine3.9-font
WORKDIR /app
COPY BUILD_PATH/target/*.jar .
EXPOSE 80
ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS *.jar"]
