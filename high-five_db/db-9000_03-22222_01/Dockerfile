FROM postgres:15

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=high-five

COPY *.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
