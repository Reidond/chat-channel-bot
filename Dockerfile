# syntax=docker/dockerfile:1

FROM python:3.11-slim-buster

WORKDIR /app
RUN pip install 'poetry==1.5.1'
COPY poetry.lock pyproject.toml ./

RUN apt-get update -y
RUN apt-get install build-essential python3-dev -y
RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction --no-ansi --no-root
COPY . .
