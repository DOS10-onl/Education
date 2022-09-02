FROM postgres:alpine

ENV POSTGRES_PASSWORD=7777777
ENV POSTGRES_USER=vlad
ENV POSTGRES_DB=testing_db
ENV PGDATA=/var/lib/postgresql/data/pgdata

USER postgres

RUN mkdir -p ${PGDATA}
