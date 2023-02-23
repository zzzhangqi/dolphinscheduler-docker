FROM alpine:latest AS DL
ARG VERSION=3.1.2

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add --no-cache --update wget && \
    wget https://ghproxy.com/https://raw.githubusercontent.com/apache/dolphinscheduler/${VERSION}/dolphinscheduler-dao/src/main/resources/sql/dolphinscheduler_postgresql.sql

FROM bitnami/postgresql:11.11.0

ENV POSTGRESQL_DATABASE=dolphinscheduler
ENV POSTGRESQL_PASSWORD=root
ENV POSTGRESQL_USERNAME=root

COPY --from=DL /dolphinscheduler_postgresql.sql /docker-entrypoint-initdb.d/dolphinscheduler_postgresql.sql

VOLUME [ "/bitnami/postgresql" ]

EXPOSE 5432
