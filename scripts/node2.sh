echo "============ Fuse should be online soon! Use <a href="http://hostname:8181/">http://hostname:8181/</a> ============"
sudo cp -a /vagrant/config/node2/. /home/vagrant/jboss-fuse-6.3.0.redhat-187/etc/
hostname node2
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/start
echo "============ Fuse join fabric to 172.16.1.2 ============"
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client -r 10 -d 30 -u admin -p admin 'fabric:join --zookeeper-password admin --profile fabric --resolver localip 172.16.1.2:2181'
