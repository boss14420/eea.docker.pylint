FROM linkyard/docker-helm
#MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

RUN apk add --no-cache python3 && \
    pip3 install --no-cache-dir https://minio.dev.ftech.ai/axiom-client/axiom_client-1.8.0-py3-none-any.whl
