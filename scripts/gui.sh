# Install GUI
yum -y reinstall epel-release

mv /etc/yum.repos.d/epel.repo.rpmnew /etc/yum.repos.d/epel.repo

yum -y groups install "X Window system"
yum -y groups install "Xfce"
systemctl set-default graphical.target
systemctl enable graphical.target --force
#systemctl isolate graphical.target

#Install fonts
yum -y install liberation-sans-fonts liberation-sans-mono-fonts droid-sans-fonts droid-sans-mono-fonts
xfconf-query -c xsettings -p /Gtk/FontName -s "Liberation Sans 10"

echo "exec /usr/bin/xfce4-session" >> ~/.xinitrc
echo "exec /usr/bin/xfce4-session" >> /home/vagrant/.xinitrc
