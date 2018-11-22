FROM python:3.5-alpine

RUN apk add --no-cache --virtual=.build-dependencies git gcc musl-dev && \
    pip install -U --no-cache-dir git+https://github.com/jachinlin/geektime_dl.git && \
    wget http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz -O - | tar -xzf - -C /usr/bin && \
    apk del .build-dependencies

WORKDIR /output

ENTRYPOINT ["geektime"]
