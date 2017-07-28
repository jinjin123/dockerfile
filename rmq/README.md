#The bind_nodename Directory  its  bind the Node_name for rabbitmq keep data

### only change  docker-entrypoint.sh 405 line
#rabbitmq-plugins enable --offline rabbitmq_management
#just enable web manage

###add setup.sh to add user  , just use chef manage
```bash
        "rabbitmq": {
          "tag": "latest",
          "image": "xxxxxxxxxxxx",
          "hostname": "sparkpadgp_rabbitmq",
          "mountlocal": "multipledir",
          "mountdocker": [
            "/home/ec2-user/tools/drupal_dir/rabbitmq_configuration/setup.sh:/setup.sh",
            "/home/ec2-user/tools/drupal_dir/rabbitmq_db:/var/lib/rabbitmq",
            "/bin/vi:/bin/vi"
          ],
          "ports": [
            "5672:5672",
            "15672:15672"
          ],
          "exec": "sleep 8;chmod 777 /setup.sh; /bin/bash /setup.sh",
          "domain": false
        },
```