echo "============ Fuse should be online soon! Use <a href="http://hostname:8181/">http://hostname:8181/</a> ============"
sudo cp -a /vagrant/config/node1/. /home/vagrant/jboss-fuse-6.3.0.redhat-187/etc/
hostname node1
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/start
echo "============ Create Fabric ============"
/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client -r 10 -d 30 -u admin -p admin 'fabric:create --profile fabric --zookeeper-password admin --resolver localip --zookeeper-data-dir zkdata --wait-for-provisioning'
#/home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client -r 3 -d 10 -u admin -p admin 'fabric:ensemble-add node2 node3'
