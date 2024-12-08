FROM python:3.13-bullseye
LABEL maintainer="ppereira.dev"

ARG DEBIAN_FRONTEND=noninteractive
ARG UID

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

EXPOSE 8000

RUN mkdir -p /home/app-agricola-backend

COPY ./app-agricola-backend /home/app-agricola-backend

RUN pip install --upgrade pip && \
    pip install -r /home/app-agricola-backend/requirements.txt

WORKDIR /home/app-agricola-backend/app
