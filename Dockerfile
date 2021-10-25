FROM python:3.10.0-alpine3.14
WORKDIR /usr/src
RUN apk update && \
    apk upgrade && \
    apk add --no-cache git && \
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
ENTRYPOINT ["python","sqlmap-dev/sqlmap.py"]
CMD ["-h"]
