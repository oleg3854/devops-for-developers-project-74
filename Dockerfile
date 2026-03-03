FROM node:20.12.2

WORKDIR /app

# Копируем файлы зависимостей из локальной папки app
COPY app/package*.json ./
RUN npm install

# Копируем ВЕСЬ контент из локальной папки app в текущую директорию контейнера (/app)
COPY app/ .

# Теперь make test точно найдет Makefile, который мы только что скопировали
CMD ["make", "test"]