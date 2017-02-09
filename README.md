#Jboss Fuse Sandbox using vagrant

Configurate several node of JBOSS Fuse 6.3 Sandbox

##How To run it
1. install vagrant
2. install virtualbox
3. create RHEL7 Box with JDK8 inside it (https://medium.com/@severi.haverila/how-to-create-a-vagrant-box-running-red-hat-enterprise-linux-55410f8cfa7d) (https://turbonomic.com/blog/on-technology/deploying-a-red-hat-enterprise-linux-7-rhel7-on-virtualbox/)
4. EXPORT SUB_USERNAME = ~YOUR_RED_HAT_USER~; (for registration your redhat OS)
5. EXPORT SUB_PASSWORD = ~YOUR_RED_HAT_PASSOWRD~; (for registration your redhat OS)
6. download jboss-fuse-karaf-6.3.0.redhat-187.zip from redhat portal
7. mkdir binary put jboss fuse zip file there
8. vagrant up
9. wait
10. SSH to node1 to create ensamble
11. /home/vagrant/jboss-fuse-6.3.0.redhat-187/bin/client
12. fabric:ensemble-add node2 node3 (run it at karaf terminal)
