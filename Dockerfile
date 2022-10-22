#
# Dockerfile for afraid-autologin
#

FROM python:3.9-alpine

RUN set -ex \
    && apk --update add --no-cache \
       gcc \
       musl-dev \
       libffi-dev \
       chromium \
       chromium-chromedriver \
    && rm -rf /tmp/* /var/cache/apk/*

WORKDIR /app
COPY app .

RUN set -ex \
  && pip install --no-cache-dir -r requirements.txt \
  && mkdir log \
  && ln -s /app/log /log

COPY docker-entrypoint.sh /entrypoint.sh

VOLUME ["/log"]

ENV USERNAME=
ENV PASSWORD=

ENTRYPOINT ["/entrypoint.sh"]

CMD ["python", "app.py"]