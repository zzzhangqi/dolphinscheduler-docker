FROM bitnami/postgresql:11.11.0
ARG VERSION=3.1.3

ENV POSTGRESQL_DATABASE=dolphinscheduler
ENV POSTGRESQL_PASSWORD=root
ENV POSTGRESQL_USERNAME=root

RUN curl -L https://ghproxy.com/https://raw.githubusercontent.com/apache/dolphinscheduler/${VERSION}/dolphinscheduler-dao/src/main/resources/sql/dolphinscheduler_postgresql.sql -o /docker-entrypoint-initdb.d/dolphinscheduler_postgresql.sql

VOLUME [ "/bitnami/postgresql" ]

EXPOSE 5432
