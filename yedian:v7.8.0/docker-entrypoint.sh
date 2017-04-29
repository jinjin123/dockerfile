#!/bin/bash
#cd  /var/www/APAC_Yedian_KTV_Core_Backend/; pm2 start app.js --name ktvcore 
#cd  /var/www/APAC_Yedian_CMS_backend; pm2-docker start index.js --machine-name  cmscore
export PATH=$PATH:/usr/local/.nvm/versions/node/v7.8.0/bin
DIR=`ls /var/www`
PATH='/var/www'
cd  $PATH/$DIR
if [ -e index.js ]
then
	cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  $PATH/$DIR/index.js
elif [ -e app.js ]
then
	cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  $PATH/$DIR/app.js 
else
	cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  dist/app.js 
fi
