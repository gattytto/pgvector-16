FROM quay.io/fedora/postgresql-16:16
RUN dnf install postgresql16-pgvector
