FROM python:3-alpine
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV PYLINT_VERSION=2.2.3

RUN apk add --no-cache --virtual .run-deps git \
 && apk add --no-cache curl \
 && pip install --no-cache-dir anybadge pylint==$PYLINT_VERSION \
 && mkdir -p /code

COPY pylint.cfg /etc/pylint.cfg
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["pylint"]
