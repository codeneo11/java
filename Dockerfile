FROM eclipse-temurin:21-jdk
WORKDIR /java
COPY Hello.java .
CMD ["java", "Hello.java"]


