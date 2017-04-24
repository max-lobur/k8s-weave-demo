FROM gliderlabs/alpine:3.3

RUN apk add --update \
    python \
    py-pip \
  && rm -rf /var/cache/apk/*

ENV PORT 80
COPY tcp-server.py /
CMD ["python", "-u", "/tcp-server.py"]

EXPOSE ${PORT}
