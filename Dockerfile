FROM adoptopenjdk/openjdk15:ubi
RUN useradd -u 8877 john
USER john
WORKDIR /usr/app
EXPOSE 80
ARG JAR_FILE=build/libs/weatherapi-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
CMD ["java","-jar","app.jar"]