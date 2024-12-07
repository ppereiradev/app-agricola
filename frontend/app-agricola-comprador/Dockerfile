FROM node:22

RUN apt-get update && apt-get install -y \
  watchman \
  openjdk-17-jdk \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/app-agricola-comprador

RUN npm install --global expo-cli

COPY ./app-agricola-comprador /home/app-agricola-comprador

WORKDIR /home/app-agricola-comprador

# COPY package*.json ./
# RUN npm install

EXPOSE 19000 19001 19002 8081 8082

# CMD ["expo", "start"]
