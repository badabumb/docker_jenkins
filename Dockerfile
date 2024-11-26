# базовый образ для jenkins
FROM jenkins/jenkins:lts
# меняем пользователя на рута чтобы установить доп пакеты
USER root
# обновляем список пакетов и устанавливаем утилиты
RUN apt-get update && apt-get install -y \
# установка curl для http-запросов
    curl \
# удаляем кэш чтобы размер образов был меньше
    && rm -rf /var/lib/apt/lists/*
# возвращаемся на пользователя jenkins
USER jenkins