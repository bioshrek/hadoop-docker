if [ ! -f /home/chianyu/shared_with_docker_container/zookeeper/myid ]; then
  /usr/bin/service zookeeper-server init --myid=1
fi
