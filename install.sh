#!/bin/sh
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 1.1'; echo


FILE1="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/ddos.sh"
FILE2="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/ddos.conf"
FILE3="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/ban.ip.list"
FILE4="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/list.sh"
FILE5="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/ignore.ip.list"

FILE6="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/LICENSE"
FILE7="https://raw.githubusercontent.com/NLPPort/DDosChecker/master/ddos/ddos.sh"


wget -q -O /usr/local/ddos/ddos.sh $FILE1
echo -n '.'
wget -q -O /usr/local/ddos/ddos.conf $FILE2
echo -n '.'
wget -q -O /usr/local/ddos/ban.ip.list $FILE3
echo -n '.'
wget -q -O /usr/local/ddos/list.sh $FILE4
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list $FILE5
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE $FILE6
echo -n '.'

chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'

#echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
#/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1

echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'
echo
cat /usr/local/ddos/LICENSE | less