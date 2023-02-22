FROM bitnami/postgresql:11.11.0
VERSION=3.1.3

ENV POSTGRESQL_DATABASE=dolphinscheduler
ENV POSTGRESQL_PASSWORD=root
ENV POSTGRESQL_USERNAME=root

RUN apt-get update && apt -y install wget && \
    wget -P /docker-entrypoint-initdb.d https://raw.githubusercontent.com/apache/dolphinscheduler/${VERSION}/dolphinscheduler-dao/src/main/resources/sql/dolphinscheduler_postgresql.sql

VOLUME [ "/bitnami/postgresql" ]

EXPOSE 5432
