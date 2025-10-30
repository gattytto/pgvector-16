FROM quay.io/fedora/postgresql-16:16
USER root
RUN dnf install -y 'dnf-command(config-manager)' && \
    dnf config-manager --add-repo https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ && \
    dnf install -y --nogpgcheck  pgvector_16 && \
    dnf clean all && rm -rf /var/cache/dnf

