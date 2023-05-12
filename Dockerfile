# Используйте базовый образ
FROM adoptopenjdk:11-jre-hotspot

EXPOSE 8085

# Установите рабочую директорию в контейнере
WORKDIR /app

# Скопируйте JAR-файл в контейнер
COPY build/libs/fat.jar .

# Установите команду запуска приложения в контейнере
CMD ["java", "-jar", "fat.jar"]