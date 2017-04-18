# Installing Ansible

echo "Disabling IPv6 ####################################################"
# Disable ipv6
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf

# Disable firewall
service firewalld stop
chkconfig firewalld off

# Install Ansible
yum -y install epel-release
yum -y install ansible
yum -y install ansible-lint

# Install 

# Cleanup
rm -rf /tmp/ansible

# Reboot
service sshd stop && reboot
