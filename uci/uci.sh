#!/bin/sh



uci batch <<-EOF

	#set luci.themes.Bootstrap=/luci-static/bootstrap
	#commit luci
EOF
exit 0
