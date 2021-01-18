#!/bin/bash

logpath="/opt/waslog7/logs/preprod_kurumsal" #logun bulundugu dizin
logfile="native_stderr.log"   #log ismi
logvolume="tmp"               #log hangi volumede
rotatevalue=2000000                          #logun rotate olacagi deger
keepfile=6                                        #kac adet dosya tutulacak is 1 fazlasi yazilmali
hostname=`hostname`
instance="preprod_kurumsal"

emptysize=`df -k |grep $logvolume |awk '{print $3}'` #karsilastirma icin bos alani bul
logsize=`du -k $logpath/$logfile |awk '{print $1}'`  #karsilastirma icin docya boyutunu bul


cd $logpath                     #log dizinine git

if [ $logsize -gt $rotatevalue ]                #eger log boyutu rotate degerinden buyukse
  then
        echo basla
        scrdate=`date +%Y%m%d%H%M`              #tarihi al
        if [ `expr $logsize \* 3` -gt $emptysize ]      #eger logsize in 3 kati alan varsa isleme basla.
                then
                cp $logfile $logfile"_"$scrdate                 #dosyayi kopyala.
                gzip -f $logfile"_"$scrdate                             #yeni dosyayi ziple
                > $logfile
                ls -t native_stderr.log_*gz | tail -n +$keepfile |xargs rm -- #x sayisina ulasinca en eskileri sil
        else            #eger yeterli alan yoksa mail at.
                        echo $hostname " sunucusunda "$instance" icin nativestderr.log rotate islemi gerceklesmedi. Kontrol ediniz!" |mail -r "From: <$hostname@bimsa.com>" -s "nativestderr.log rotate edilemedi" "Bimsa-Middleware@bimsa.com"
        fi
fi
