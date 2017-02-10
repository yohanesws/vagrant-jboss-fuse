echo "============ Unzipping fuse (2/2)============ "
unzip /vagrant/binary/jboss-fuse-karaf-6.3.0.redhat-187.zip -d /home/vagrant/
sudo chmod -R 777 /home/vagrant/jboss-fuse-6.3.0.redhat-187
sudo cp -a /vagrant/config/all/. /home/vagrant/jboss-fuse-6.3.0.redhat-187/etc/
#echo "============ configuring fuse environment (5/5)============"
#echo "source /vagrant/binary/.bashrc" >> /home/vagrant/.bashrc
