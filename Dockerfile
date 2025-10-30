FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf module reset postgresql && \
    dnf module enable -y postgresql:16 && \
    dnf install -y postgresql16-pgvector 
