FROM bitnami/postgresql:11.11.0

ENV POSTGRESQL_DATABASE=dolphinscheduler
ENV POSTGRESQL_PASSWORD=root
ENV POSTGRESQL_USERNAME=root

COPY dolphinscheduler_postgresql.sql /docker-entrypoint-initdb.d
EXPOSE 5432

