FROM openjdk:8

RUN apt-get update && apt-get install -y lsof
RUN wget -O /hugegraph-server.tar.gz https://github.com/hugegraph/hugegraph/releases/download/v0.10.4/hugegraph-0.10.4.tar.gz
RUN tar zxvf /hugegraph-server.tar.gz
RUN mv /hugegraph-0.10.4 /hugegraph-server
RUN cd /hugegraph-server
WORKDIR /hugegraph-server

VOLUME /hugegraph-server/conf
ADD entrypoint.sh /entrypoint.sh

EXPOSE 8080
CMD ["sh", "/entrypoint.sh"]