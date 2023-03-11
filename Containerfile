ARG FEDORA_MAJOR_VERSION=37

FROM ghcr.io/cgwalters/fedora-silverblue:${FEDORA_MAJOR_VERSION}

RUN rpm-ostree install vim && \
    rm -rf \
        /tmp/* \
        /var/* && \
    ostree container commit
