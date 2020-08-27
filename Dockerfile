FROM python:3.7-alpine

LABEL MAINTAINER MSMJ PROJECTS

ENV PYTHONBUFFERED 1

COPY ./require.txt /require.txt

RUN pip install -r/require.txt

RUN mkdir /app

WORKDIR /app

COPY ./app /app

RUN adduser -D user

USER user

