# gen core-site.xml
sed "s/HDFSNAMENODERPC_SERVICE_HOST/$HDFSNAMENODERPC_SERVICE_HOST/;s/HDFSNAMENODERPC_SERVICE_PORT/$HDFSNAMENODERPC_SERVICE_PORT/" /etc/hadoop/conf/core-site.xml.template > /etc/hadoop/conf/core-site.xml
cat /etc/hadoop/conf/core-site.xml

# log dir
mkdir -p /home/chianyu/shared_with_docker_container/hadoop-log-dir
chown -R hdfs:hdfs /home/chianyu/shared_with_docker_container/hadoop-log-dir

# create datanode if not exist
if [ ! -d /home/chianyu/shared_with_docker_container/cdh4/dn ]; then
  mkdir -p /home/chianyu/shared_with_docker_container/cdh4/dn
  chown -R hdfs:hdfs /home/chianyu/shared_with_docker_container/cdh4/dn
  chmod 700 /home/chianyu/shared_with_docker_container/cdh4/dn
fi
