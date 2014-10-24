# gen core-site.xml
sed s/HOSTNAME/$(ip addr show eth0 | grep -Po 'inet \K[\d.]+')/ /etc/hadoop/conf/core-site.xml.template > /etc/hadoop/conf/core-site.xml
cat /etc/hadoop/conf/core-site.xml

# log dir
mkdir -p /home/chianyu/shared_with_docker_container/hadoop-log-dir
chown -R hdfs:hdfs /home/chianyu/shared_with_docker_container/hadoop-log-dir

# create and format namenode if not exist
if [ ! -d /home/chianyu/shared_with_docker_container/cdh5/nn/current ]; then
  mkdir -p /home/chianyu/shared_with_docker_container/cdh5/nn
  chown -R hdfs:hdfs /home/chianyu/shared_with_docker_container/cdh5/nn
  chmod 700 /home/chianyu/shared_with_docker_container/cdh5/nn
  sudo -u hdfs hdfs namenode -format  # format
fi
