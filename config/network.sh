### curl -o- https://github.com/ittp/ows/raw/gh-pages/config/network.sh | sh

#!/bin/sh
uci export network > /tmp/network.uci.conf

proto=${1}

static() {
# $proto $ip $gw $dns
if [ $proto == 'static'];
then
  iface=${2}
  ip=${3}
  gw=${4} 
  dns=${5}
  
  static $iface $ip $gw $dns
fi;



uci batch <<-EOF
  
  
  
   set network.$iface.proto=$proto
  set network.$iface.ipaddr=$ip
  set network.$iface.gateway=$gw
  set network.$iface.dns=$dns
  
  changes
  
EOF
}

wan() {
 
echo "setup wan"

echo $proto

}
