wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
sudo dpkg -i puppetlabs-release-pc1-trusty.deb
sudo apt-get update

sudo apt-get install puppetserver -y

sudo service puppetserver stop

sudo cp /home/vagrant/resources/puppetserver /etc/default/puppetserver
sudo cp /home/vagrant/resources/autosign.conf /etc/puppetlabs/puppet/autosign.conf

sudo service puppetserver start

export PATH=$PATH:/opt/puppetlabs/puppet/bin
