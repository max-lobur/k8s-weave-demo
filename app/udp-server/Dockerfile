FROM gliderlabs/alpine:3.3

RUN apk add --update \
    python \
    py-pip \
  && rm -rf /var/cache/apk/*

ENV PORT 514
COPY udp-server.py /
CMD ["python", "-u", "/udp-server.py"]

EXPOSE ${PORT}
