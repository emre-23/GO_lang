iconv -f ISO-8859-9 /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt -t UTF-8 -o /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey_bak.txt
mv /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt_yedek
mv /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey_bak.txt /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt
chmod 777 /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt_yedek
chmod 777 /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt
sed -f /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/qwe.sed /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt > /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt_converted
mv /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt_unconverted
mv /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt_converted /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt
chmod 777 /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt
chown boadmin:boadmin /app/edq/oedqlocalhome/landingarea/Customer/Turkey/CustomerData/Turkey.txt