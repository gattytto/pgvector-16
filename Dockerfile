FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf install -y gcc postgresql16-devel make git && \
    git clone --branch v0.7.4 https://github.com/pgvector/pgvector.git /tmp/pgvector && \
    cd /tmp/pgvector && \
    make && \
    make install && \
    rm -rf /tmp/pgvector && \
    dnf remove -y gcc postgresql16-devel make git && \
    dnf clean all
