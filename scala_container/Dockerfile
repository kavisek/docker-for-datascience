
# first stage

FROM hseeberger/scala-sbt:11.0.6_1.3.9_2.13.1 AS build

COPY ./ ./

RUN sbt compile clean package

# second stage

FROM openjdk:8-jre-alpine3.9 

COPY --from=build /root/target/scala-2.12/*.jar /scala-hello-world-sample-app.jar
COPY --from=build /root/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.2.jar /scala-library-2.12.2.jar

CMD ["java", "-cp", "scala-hello-world-sample-app.jar:scala-library-2.12.2.jar", "HelloWorld"]