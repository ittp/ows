echo "global config script"

ssh root@data.ittps.ru -vvv -i ~/.ssh/data.key

uci export network > /tmp/network.conf
cat /tmp/network.conf

opkg update
opkg install curl
