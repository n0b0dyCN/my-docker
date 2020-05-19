FROM openjdk:8

RUN apt-get update -y

# download hbase
RUN wget https://downloads.apache.org/hbase/2.2.4/hbase-2.2.4-bin.tar.gz
RUN tar zxvf hbase-2.2.4-bin.tar.gz
RUN mv hbase-2.2.4 hbase
RUN rm hbase-2.2.4-bin.tar.gz

WORKDIR /hbase
VOLUME /hbase/conf
RUN chmod a+x /hbase/bin/*.sh
ADD entrypoint.sh /entrypoint.sh

# REST API
# REST Web UI at :8085/rest.jsp
# Thrift API
# Thrift Web UI at :9095/thrift.jsp
# HBase's Embedded zookeeper cluster
# HBase Master web UI at :16010/master-status;  ZK at :16010/zk.jsp
EXPOSE 8080 8085 9090 9095 2181 16010

CMD ["bash", "/entrypoint.sh"]