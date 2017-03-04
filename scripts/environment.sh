echo "============ Setting up environment (1/2) ============"
echo "172.16.1.2 fabricroot1 node1" >> /etc/hosts
echo "172.16.1.3 fabricroot2 node2" >> /etc/hosts
echo "172.16.1.4 fabricroot3 node3" >> /etc/hosts
echo "========stopping firewalld============="
sudo systemctl stop firewalld.service
# sudo yum install java-1.8.0-openjdk-devel
echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk" >>  ~/.bashrc
source ~/.bashrc
