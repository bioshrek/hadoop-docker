# gen hbase-site.xml
sed "s/HDFSNAMENODERPC_SERVICE_HOST/$HDFSNAMENODERPC_SERVICE_HOST/;s/HDFSNAMENODERPC_SERVICE_PORT/$HDFSNAMENODERPC_SERVICE_PORT/;s/ZOOKEEPERCLIENT_SERVICE_HOST/$ZOOKEEPERCLIENT_SERVICE_HOST/;s/ZOOKEEPERCLIENT_SERVICE_PORT/$ZOOKEEPERCLIENT_SERVICE_PORT/" /etc/hbase/conf/hbase-site.xml.template > /etc/hbase/conf/hbase-site.xml
cat /etc/hbase/conf/hbase-site.xml

# log dir
mkdir -p /home/chianyu/shared_with_docker_container/hbase-log-dir
chown -R hbase:hbase /home/chianyu/shared_with_docker_container/hbase-log-dir
. /etc/hbase/conf/hbase-env.sh
