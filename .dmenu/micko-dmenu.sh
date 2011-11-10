#!/bin/sh
DMENU='dmenu -i -b -nb #000000 -nf #999999 -sb #000000 -sf #31658C  -fn -*-*-*-r-*--20-*-*-*-*-*-*-*'
choice=$(echo "nirwa\ndemocms\nsugarcrm\nfiamain\nsilverstripesites\neniar\nfia\nflatearthdirect\nappichar\nsecure\nrma\nbiometrics\ngipps\nilsi\nwordpresssites\ncfansw\nmicko\nangrybeaton\nfatbeehive\ncbca\nand\ncfa\nace" | $DMENU)

case "$choice" in
nirwa) cd /mnt/sshfs/micko/server/www/nirwa/www; rxvt-unicode --title nirwa -e vim --servername nirwa;;
democms) cd /mnt/sshfs/micko/server/www/democms/www; rxvt-unicode --title democms -e vim --servername democms;;
sugarcrm) cd /mnt/sshfs/micko/server/www/sugarcrm/www; rxvt-unicode --title sugarcrm -e vim --servername sugarcrm;;
fiamain) cd /mnt/sshfs/micko/server/www/fiamain/www; rxvt-unicode --title fiamain -e vim --servername fiamain;;
silverstripesites) cd /mnt/sshfs/micko/server/www/silverstripesites/www; rxvt-unicode --title silverstripesites -e vim --servername silverstripesites;;
eniar) cd /mnt/sshfs/micko/server/www/eniar/www; rxvt-unicode --title eniar -e vim --servername eniar;;
fia) cd /mnt/sshfs/micko/server/www/fia/www; rxvt-unicode --title fia -e vim --servername fia;;
flatearthdirect) cd /mnt/sshfs/micko/server/www/flatearthdirect/www; rxvt-unicode --title flatearthdirect -e vim --servername flatearthdirect;;
appichar) cd /mnt/sshfs/micko/server/www/appichar/www; rxvt-unicode --title appichar -e vim --servername appichar;;
secure) cd /mnt/sshfs/micko/server/www/secure/www; rxvt-unicode --title secure -e vim --servername secure;;
rma) cd /mnt/sshfs/micko/server/www/rma/www; rxvt-unicode --title rma -e vim --servername rma;;
biometrics) cd /mnt/sshfs/micko/server/www/biometrics/www; rxvt-unicode --title biometrics -e vim --servername biometrics;;
gipps) cd /mnt/sshfs/micko/server/www/gipps/www; rxvt-unicode --title gipps -e vim --servername gipps;;
ilsi) cd /mnt/sshfs/micko/server/www/ilsi/www; rxvt-unicode --title ilsi -e vim --servername ilsi;;
wordpresssites) cd /mnt/sshfs/micko/server/www/wordpresssites/www; rxvt-unicode --title wordpresssites -e vim --servername wordpresssites;;
cfansw) cd /mnt/sshfs/micko/server/www/cfansw/www; rxvt-unicode --title cfansw -e vim --servername cfansw;;
micko) cd /mnt/sshfs/micko/server/www/micko/www; rxvt-unicode --title micko -e vim --servername micko;;
angrybeaton) cd /mnt/sshfs/micko/server/www/angrybeaton/www; rxvt-unicode --title angrybeaton -e vim --servername angrybeaton;;
fatbeehive) cd /mnt/sshfs/micko/server/www/fatbeehive/www; rxvt-unicode --title fatbeehive -e vim --servername fatbeehive;;
cbca) cd /mnt/sshfs/micko/server/www/cbca/www; rxvt-unicode --title cbca -e vim --servername cbca;;
and) cd /mnt/sshfs/micko/server/www/and/www; rxvt-unicode --title and -e vim --servername and;;
cfa) cd /mnt/sshfs/micko/server/www/cfa/www; rxvt-unicode --title cfa -e vim --servername cfa;;
ace) cd /mnt/sshfs/micko/server/www/ace/www; rxvt-unicode --title ace -e vim --servername ace;;
esac
