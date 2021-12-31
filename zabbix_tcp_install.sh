#!/bin/bash
# for Linux

cd /opt
git clone https://github.com/Evileggg/zabbix_template_tcp_connections
sleep 3
cp /opt/zabbix_template_tcp_connections/json_item_tcp.sh /opt
sleep 1
cp /opt/zabbix_template_tcp_connections/userparameter_tcp.conf /etc/zabbix/zabbix_agentd.d
sleep 1
rm -rf /opt/zabbix_template_tcp_connections
sleep 1
systemctl restart zabbix-agent
