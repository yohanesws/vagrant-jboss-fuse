#Jboss Fuse Sandbox using vagrant

if using different vagrant file
export VAGRANT_VAGRANTFILE=Vagrantemptybox

Configurate several node of JBOSS Fuse 6.3 Sandbox

##How To run it
1. install vagrant (https://www.vagrantup.com)
2. install virtualbox (https://www.virtualbox.org)
3. install vagrant registration plugin (https://github.com/projectatomic/adb-vagrant-registration)
4. create RHEL7 Box with JDK8 inside it (https://medium.com/@severi.haverila/how-to-create-a-vagrant-box-running-red-hat-enterprise-linux-55410f8cfa7d) (https://turbonomic.com/blog/on-technology/deploying-a-red-hat-enterprise-linux-7-rhel7-on-virtualbox/)
5. EXPORT SUB_USERNAME = ~YOUR_RED_HAT_USER~; (for registration your redhat OS)
6. EXPORT SUB_PASSWORD = ~YOUR_RED_HAT_PASSOWRD~; (for registration your redhat OS)
7. download jboss-fuse-karaf-6.3.0.redhat-187.zip from redhat portal
8. mkdir binary put jboss fuse zip file there
9. vagrant up (wait for a while to vagrant provisioning all)
10. SSH to node1 to create ensamble
11. /home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client
12. fabric:ensemble-add --zookeeper-data-dir zkdata node2 node3 (run it at karaf terminal)
