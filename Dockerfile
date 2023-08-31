FROM postgres:latest
ENV POSTGRES_PASSWORD=mega55555
ENV POSTGRES_USER=nezhdanov
ENV POSTGRES_DB=test_db
COPY init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql