#!/usr/bin/bash
clear
echo "---Recon is in progress---"
echo "Getting hostname"
host=$(hostname)
echo "Getting distro and kernel"
disinfo=$(uname -v)
echo "Getting users"
user=$(cat /etc/passwd)
echo "Getting processes"
pro=$(systemctl | grep running)
echo "Writing result"
mkdir recon
touch ./recon/info.txt
echo "$host" > ./recon/info.txt
echo "$disinfo" >> ./recon/info.txt
printf '%s/n' "$user" >> ./recon/info.txt
printf '%s/n' "$pro" >> ./recon/info.txt
echo "Done"
