FROM alpine:latest

RUN apk add -U make

RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/main \
    poppler harfbuzz-icu

RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/community \
    zziplib

RUN apk add -U --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
    texlive-full

RUN ln -s /usr/bin/mktexlsr /usr/bin/mktexlsr.pl

VOLUME /data

CMD [ "/bin/bash" ]