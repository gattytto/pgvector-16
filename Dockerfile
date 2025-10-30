FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf module reset postgresql && \
    dnf module enable postgresql:16 && \
    dnf install -y --enablerepo=updates-modular postgresql16-pgvector
