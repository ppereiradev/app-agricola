FROM node:22
LABEL maintainer="ppereira.dev"

RUN apt-get update && apt-get install -y \
  watchman \
  openjdk-17-jdk \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/app-agricola-vendedor

RUN npm install --global expo-cli

COPY ./app-agricola-vendedor /home/app-agricola-vendedor

WORKDIR /home/app-agricola-comprador

# COPY package*.json ./
# RUN npm install

EXPOSE 19000 19001 19002 8081 8082

# CMD ["expo", "start"]
