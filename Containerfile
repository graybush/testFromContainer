ARG FEDORA_MAJOR_VERSION=37

FROM quay.io/fedora-ostree-desktops/silverblue:${FEDORA_MAJOR_VERSION}

RUN rpm-ostree install vim && \
    rm -rf \
        /tmp/* \
        /var/* && \
    ostree container commit
