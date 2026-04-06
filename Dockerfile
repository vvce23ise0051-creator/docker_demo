FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac myapp1.java

CMD ["java", "myapp1"]