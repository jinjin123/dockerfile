#!/bin/bash
export PATH=$PATH:/usr/local/.nvm/versions/node/v7.8.0/bin
DIR=`ls /var/www`
PATH='/var/www'
cd  $PATH/$DIR
if [ -e $PATH/$DIR/server/server.js ]
then
        cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  $PATH/$DIR/server/server.js &
        cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  $PATH/$DIR/consume/consume.js
else
        cd $PATH/$DIR && /usr/local/.nvm/versions/node/v7.8.0/bin/node  $PATH/$DIR/bin/www
fi
