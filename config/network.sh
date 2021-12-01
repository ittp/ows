#!/bin/sh

uci export network > /tmp/network.uci.conf

local proto=${1}

static() {
# $proto $ip $gw $dns
if [ $proto == 'static'];
then
  iface=${1}
  ip=${2}
  gw=${3} 
  dns=${4}
  
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
