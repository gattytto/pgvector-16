FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf install -y --disablerepo='*' --enablerepo='fedora-postgresql-16' \
    postgresql16-pgvector
