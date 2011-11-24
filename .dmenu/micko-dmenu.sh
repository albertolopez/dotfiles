#!/bin/sh
DMENU='dmenu -i -b -nb #000000 -nf #999999 -sb #000000 -sf #31658C  -fn -*-*-*-r-*--20-*-*-*-*-*-*-*'
choice=$(echo "nirwa\ndemocms\nsugarcrm\nfiamain\neniar\nfia\nflatearthdirect\nappichar\nsecure\nrma\nbiometrics\ngipps\nilsi\nwordpresssites\ncfansw\nmicko\nangrybeaton\nfatbeehive\ncbca\nand\ncfa\nace" | $DMENU)

case "$choice" in
nirwa) cd /mnt/sshfs/micko/server/www/nirwa/www; lxterminal --title nirwa -e vim --servername nirwa;;
democms) cd /mnt/sshfs/micko/server/www/democms/www; lxterminal --title democms -e vim --servername democms;;
sugarcrm) cd /mnt/sshfs/micko/server/www/sugarcrm/www; lxterminal --title sugarcrm -e vim --servername sugarcrm;;
fiamain) cd /mnt/sshfs/micko/server/www/fiamain/www; lxterminal --title fiamain -e vim --servername fiamain;;
eniar) cd /mnt/sshfs/micko/server/www/eniar/www; lxterminal --title eniar -e vim --servername eniar;;
fia) cd /mnt/sshfs/micko/server/www/fia/www; lxterminal --title fia -e vim --servername fia;;
flatearthdirect) cd /mnt/sshfs/micko/server/www/flatearthdirect/www; lxterminal --title flatearthdirect -e vim --servername flatearthdirect;;
appichar) cd /mnt/sshfs/micko/server/www/appichar/www; lxterminal --title appichar -e vim --servername appichar;;
secure) cd /mnt/sshfs/micko/server/www/secure/www; lxterminal --title secure -e vim --servername secure;;
rma) cd /mnt/sshfs/micko/server/www/rma/www; lxterminal --title rma -e vim --servername rma;;
biometrics) cd /mnt/sshfs/micko/server/www/biometrics/www; lxterminal --title biometrics -e vim --servername biometrics;;
gipps) cd /mnt/sshfs/micko/server/www/gipps/www; lxterminal --title gipps -e vim --servername gipps;;
ilsi) cd /mnt/sshfs/micko/server/www/ilsi/www; lxterminal --title ilsi -e vim --servername ilsi;;
wordpresssites) cd /mnt/sshfs/micko/server/www/wordpresssites/www; lxterminal --title wordpresssites -e vim --servername wordpresssites;;
cfansw) cd /mnt/sshfs/micko/server/www/cfansw/www; lxterminal --title cfansw -e vim --servername cfansw;;
micko) cd /mnt/sshfs/micko/server/www/micko/www; lxterminal --title micko -e vim --servername micko;;
angrybeaton) cd /mnt/sshfs/micko/server/www/angrybeaton/www; lxterminal --title angrybeaton -e vim --servername angrybeaton;;
fatbeehive) cd /mnt/sshfs/micko/server/www/fatbeehive/www; lxterminal --title fatbeehive -e vim --servername fatbeehive;;
cbca) cd /mnt/sshfs/micko/server/www/cbca/www; lxterminal --title cbca -e vim --servername cbca;;
and) cd /mnt/sshfs/micko/server/www/and/www; lxterminal --title and -e vim --servername and;;
cfa) cd /mnt/sshfs/micko/server/www/cfa/www; lxterminal --title cfa -e vim --servername cfa;;
ace) cd /mnt/sshfs/micko/server/www/ace/www; lxterminal --title ace -e vim --servername ace;;
esac
