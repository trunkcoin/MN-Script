# MN-Setup Guide (Follow below Steps)


wget -q https://raw.githubusercontent.com/trunkcoin/MN-Script/master/trunk-mn.sh

sudo chmod +x trunk-mn.sh

./trunk-mn.sh

When prompted to Enter your trunk Masternode GEN Key.

Paster your Masternode GEN Key and press enter

Wait till Node is fully Synced with blockchain. For check enter below command.

trunk-cli getinfo

When Node Fully Synced enter below command for check masternode status.

trunk-cli masternode status
