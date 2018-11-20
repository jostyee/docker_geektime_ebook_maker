FROM python:3-alpine3.8

RUN apk add --no-cache --virtual=.build-dependencies git && \
    pip install -U --no-cache-dir git+https://github.com/jachinlin/geektime_ebook_maker.git && \
    wget http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz -O - | tar -xzf - -C /usr/bin && \
    apk del .build-dependencies

WORKDIR /output

ENTRYPOINT ["geektime"]
