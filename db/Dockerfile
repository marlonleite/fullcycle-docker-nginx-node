FROM postgres:14.1-alpine as dumper

COPY init.sql /docker-entrypoint-initdb.d/

RUN ["sed", "-i", "s/exec \"$@\"/echo \"skipping...\"/", "/usr/local/bin/docker-entrypoint.sh"]

ENV PG_USER=postgres
ENV POSTGRES_HOST_AUTH_METHOD=trust
ENV PGDATA=/data

RUN ["/usr/local/bin/docker-entrypoint.sh", "postgres"]

FROM postgres:14.1-alpine

COPY --from=dumper /data $PGDATA

EXPOSE 5432