FROM python:3.10.0-alpine3.14
WORKDIR /usr/src
RUN wget https://github.com/sqlmapproject/sqlmap/archive/refs/heads/master.tar.gz && \
    tar -xzvf master.tar.gz && \
    rm -rf master.tar.gz
ENTRYPOINT ["python","sqlmap-master/sqlmap.py"]
CMD ["-h"]
