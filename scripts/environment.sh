echo "============ Setting up environment (1/2) ============"
echo "10.1.2.2 fabricroot1 node1" >> /etc/hosts
echo "10.1.2.3 fabricroot2 node2" >> /etc/hosts
echo "10.1.2.4 fabricroot3 node3" >> /etc/hosts
echo "========stopping firewalld============="
sudo systemctl stop firewalld.service
