FROM postgres:11.2-alpine

ENV POSTGRES_DB help_directory

COPY init/** /docker-entrypoint-initdb.d/
