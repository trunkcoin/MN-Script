#/bin/bash

echo "We will update your trunk Masternode right now" 
sudo apt-get -y install unzip
trunk-cli stop
rm -rf /usr/local/bin/trunk*
mkdir TROUpdated_1.0.0.0
cd TROUpdated_1.0.0.0
wget https://github.com/trunkcoin/TrunkCoin/releases/download/v1.0.0.0-Final/TrunkCoin-1.0.0.0-ubuntu_daemon_16.04.tar.gz
tar xzvf TrunkCoin-1.0.0.0-ubuntu_daemon_16.04.tar.gz
mv trunkd /usr/local/bin/trunkd
mv trunk-cli /usr/local/bin/trunk-cli
chmod +x /usr/local/bin/trunk*
rm -rf ~/.trunk/blocks
rm -rf ~/.trunk/chainstate
rm -rf ~/.trunk/peers.dat
cd ~/.trunk/
wget https://github.com/trunkcoin/TrunkCoin/releases/download/v1.0.0.0-Final/bootstrap.tar.gz
tar xzvf bootstrap.tar.gz
echo "addnode=157.230.186.21 add" >> trunk.conf
echo "addnode=142.93.86.132 add" >> trunk.conf
echo "addnode=178.62.224.251 add" >> trunk.conf
echo "addnode=139.59.67.159 add" >> trunk.conf
echo "addnode=142.93.32.211 add" >> trunk.conf
echo "addnode=134.209.228.42 add" >> trunk.conf
echo "addnode=167.99.185.124 add" >> trunk.conf
echo "addnode=128.199.160.59 add" >> trunk.conf
cd ..
cd TROUpdated_1.0.0.0
trunkd -daemon
sleep 10
trunk-cli addnode 157.230.186.21 onetry
trunk-cli addnode 142.93.86.132 onetry
trunk-cli addnode 178.62.224.251 onetry
trunk-cli addnode 139.59.67.159 onetry
trunk-cli addnode 142.93.32.211 onetry
trunk-cli addnode 134.209.228.42 onetry
trunk-cli addnode 167.99.185.124 onetry
trunk-cli addnode 128.199.160.59 onetry
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"

