yum -y install docker
chkconfig docker on

curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

yum -y install python*-pip
pip install --upgrade setuptools

wget https://kent.dl.sourceforge.net/project/cntlm/cntlm/cntlm%200.92.3/cntlm-0.92.3-1.x86_64.rpm
yum -y install cntlm*.rpm

yum -y install firefox
yum -y install git

# Install Visual Studio Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yum -y install code

# Install Atom
wget https://github.com/atom/atom/releases/download/v1.16.0/atom.x86_64.rpm
yum -y install atom.x86_64.rpm
