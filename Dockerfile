# Используем Ubuntu 22.04
FROM ubuntu:22.04

# Обновляем систему и устанавливаем необходимые пакеты
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Скачиваем скрипт установки VPN
COPY install.sh /install.sh
RUN chmod +x /install.sh

# Запускаем скрипт при старте контейнера
CMD ["/install.sh"]
