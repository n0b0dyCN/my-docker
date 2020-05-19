FROM openjdk:8

RUN apt-get update && apt-get install -y lsof
RUN wget -O /hugegraph-studio.tar.gz https://github.com/hugegraph/hugegraph-studio/releases/download/v0.10.0/hugegraph-studio-0.10.0.tar.gz
RUN tar zxvf /hugegraph-studio.tar.gz
RUN mv /hugegraph-studio-0.10.0 /hugegraph-studio
RUN cd /hugegraph-studio
WORKDIR /hugegraph-studio

VOLUME /hugegraph-studio/conf
ADD entrypoint.sh /entrypoint.sh

EXPOSE 8088
CMD ["sh", "/entrypoint.sh"]