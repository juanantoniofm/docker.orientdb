
from cogniteev/oracle-java:java7



COPY files/orientdb-community-2.1.12.tar.gz /opt/

RUN cd /opt; wget http://orientdb.com/download.php?email=unknown@unknown.com&file=orientdb-community-2.1.12.tar.gz&os=linux

RUN cd /opt; tar -xvf orientdb-community-2.1.12.tar.gz; ln -s orientdb-community-2.1.12 orientdb

ENV ORIENTDB_ROOT_PASSWORD="foobar"

CMD ["/opt/orientdb/bin/server.sh"]
