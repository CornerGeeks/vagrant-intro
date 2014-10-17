echo I am provisioning...
date
echo "Start" > /etc/vagrant_provisioned_at
date >> /etc/vagrant_provisioned_at
apt-get update
echo mysql-server mysql-server/root_password password password | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password password | sudo debconf-set-selections
apt-get install -y curl git apache2 php5 mysql-server
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs
npm install -g bower
npm install -g gulp 
date
echo "End" >> /etc/vagrant_provisioned_at
date >> /etc/vagrant_provisioned_at