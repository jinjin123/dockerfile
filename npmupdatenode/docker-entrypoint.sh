#!/bin/bash
export PATH=$PATH:/usr/local/.nvm/versions/node/v7.0.0/bin
CODE_PATH='/var/www/html'
MONITOR='/var/www'
/bin/cp $MONITOR/newrelic.js  $CODE_PATH/newrelic.js
cd $CODE_PATH
/bin/sed -i "s/app_name: .*/app_name: [\"$NEW_RELIC_APP_NAME\"],/"   $CODE_PATH/newrelic.js
/bin/sed -i "s/license_key: .*/license_key: \"$NEW_RELIC_LICENSE_KEY\",/"   $CODE_PATH/newrelic.js
if [ -e 'config/index.js' ]
then
        /bin/sed -ie '/newrelic/d' $CODE_PATH/config/index.js
        /bin/sed -i '1 irequire("newrelic")' $CODE_PATH/config/index.js
        if [ $? -ne 0 ]
        then
                cd $CODE_PATH &&  /usr/local/.nvm/versions/node/v7.0.0/bin/npm run dev
        else
                cd $CODE_PATH &&  /usr/local/.nvm/versions/node/v7.0.0/bin/npm run dev
        fi
fi
