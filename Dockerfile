FROM docker
ENV RANCHER_COMPOSE_VERSION_NUM "0.12.5"
ENV RANCHER_VERSION_NUM "v0.6.9"
RUN wget https://github.com/rancher/rancher-compose/releases/download/v0.12.5/rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION_NUM.tar.gz && \
    tar zxf rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION_NUM.tar.gz && \
    rm rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION_NUM.tar.gz && \
    mv rancher-compose-v$RANCHER_COMPOSE_VERSION_NUM/rancher-compose /usr/local/bin/rancher-compose && \
    rm -rf rancher-compose-v$RANCHER_COMPOSE_VERSION_NUM && \
    chmod +x /usr/local/bin/rancher-compose
RUN wget https://github.com/rancher/cli/releases/download/$RANCHER_VERSION_NUM/rancher-linux-amd64-$RANCHER_VERSION_NUM.tar.gz && \
    tar zxf rancher-linux-amd64-$RANCHER_VERSION_NUM.tar.gz && \
    rm rancher-linux-amd64-$RANCHER_VERSION_NUM.tar.gz && \
    mv rancher-$RANCHER_VERSION_NUM/rancher /usr/local/bin/rancher && \
    rm -rf rancher-$RANCHER_VERSION_NUM && \
    chmod +x /usr/local/bin/rancher
