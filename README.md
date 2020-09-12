# DDosChecker
Centos use only defensive tooling. RX8 


## Run and execute

`wget https://raw.githubusercontent.com/NLPPort/DDosChecker/master/install.sh |  chmod 0700 install.sh | ./install.sh`

## Check the ban list and ignore ip list

`sh list.sh`


## Also install the listed applications for notifications

`yum -y install iptables`

`yum -y install sendmail`

`yum install -y mailx`
