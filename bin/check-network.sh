ansible -b -m shell -a 'echo $(hostname),$(journalctl -b -k | grep "NIC Link" | tail -1 | grep  -o -E "100 Mbps")' workstations | grep "100 Mbps"
