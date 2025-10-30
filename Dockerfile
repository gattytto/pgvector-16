FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf install postgresql16-pgvector
