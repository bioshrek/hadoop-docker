# Creates distributed cdh5
#
# docker build -t bioshrek/hbase-regionserver:cdh5 .

FROM bioshrek/hadoop-base:cdh5
MAINTAINER Huan Wang <shrekwang1@gmail.com>

# config hbase
ADD hbase-env.sh /etc/hbase/conf/hbase-env.sh
ADD hbase-site.xml.template /etc/hbase/conf/hbase-site.xml.template

# supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# start hbase
ADD pre-start-hbase.sh /home/chianyu/pre-start-hbase.sh
RUN chmod a+x /home/chianyu/pre-start-hbase.sh
ENTRYPOINT /home/chianyu/pre-start-hbase.sh && /usr/bin/supervisord

EXPOSE 60020 60030
