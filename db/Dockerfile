FROM mariadb:11-ubi9
LABEL maintainer="ppereira.dev"

EXPOSE 3306
USER root

RUN mkdir -p /home/app-agricola-db

COPY ./data.sql /home/app-agricola-db/data.sql
COPY ./entrypoint.sh /home/app-agricola-db/entrypoint.sh

WORKDIR /home/app-agricola-db/

RUN chmod +x /home/app-agricola-db/entrypoint.sh

#ENTRYPOINT ["sh", "/home/app-agricola-db/entrypoint.sh"]
