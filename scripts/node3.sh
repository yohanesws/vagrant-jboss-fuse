echo "============ Fuse should be online soon! Use <a href="http://hostname:8181/">http://hostname:8181/</a> ============"
sudo cp -a /vagrant/config/node3/. /home/vagrant/jboss-fuse-6.3.0.redhat-187/etc/
hostname node3
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/start
echo "============ Fuse join fabric to 10.1.2.2 ============"
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client -r 3 -d 10 -u admin -p admin 'fabric:join --zookeeper-password admin --profile fabric --resolver localip 10.1.2.2:2181'
