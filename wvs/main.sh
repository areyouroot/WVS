# sudo nmap 10.0.2.5 --traceroute -p1-65535 -sV -O --osscan-guess -vv A
# python vulnx.py -u http://10.0.2.5/ -d -w --exploit --cms
NAME=$(zenity --entry --title="ip address or url" --text="Please enter the ip address or url")
if [ -n "$NAME" ]
then
    zenity --info --text="the ip address or url is $NAME" --no-wrap
    echo "<body>" > $NAME"_report.html"
    sudo nmap $NAME --traceroute -p1-65535 -O --osscan-guess -vv -A >> $NAME"_report.html"
    name="http://"$NAME"/"
    echo $name
    python vulnx.py -u $name -d -w --exploit --cms >> $NAME"_report.html"
    zenity --info --text="the scan has been completed for ip address or url is $NAME" --no-wrap
fi