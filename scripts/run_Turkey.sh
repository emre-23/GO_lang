tarih=`date +%d%m%y`

LOGFILE=/home/aviuser/scripts/run_Turkey_${tarih}.log > $LOGFILE

######### Delete old logfiles ##############
find /home/aviuser/scripts/ -name 'run_Turkey*.log' -mtime 7 -print -exec rm {} \;


######### Start Scanning ###############

/app/tomcat/ss0/jdk/jdk1.7.0_55/bin/java -jar /app/edq/tools/jmxtools.jar runopsjob -job "PART 0 - Standardise Customer Data [BESPOKE]" -project "Watchlist Screening_F" -u Batchman -p Batchman1 -nowait -props "/app/edq/oedqlocalhome/runprofiles/watchlist-screening_Turkey_Part0.properties" 127.0.0.1:9005  >> $LOGFILE

rc1=$?

if [ $rc1 != 0 ]; then
   echo "=========================================================" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
   echo "==========   TARAMA HATALI.  ====  $(date +"%y%m%d%T")  ===============" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
tail -100 $LOGFILE | mail -s "AvivaSA OWS Tarama Sonucu" sabancidx-middleware@sabancidx.com Nail.Ozdemir@bimsa.com
else
   echo "=========================================================" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
   echo "==========   TARAMA TAMAMLANDI. ====  $(date +"%y%m%d%T")  =============" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
   echo "=========================================================" >> $LOGFILE
tail -100 $LOGFILE | mail -s "AvivaSA OWS Tarama Sonucu" sabancidx-middleware@sabancidx.com Nail.Ozdemir@bimsa.com
fi
