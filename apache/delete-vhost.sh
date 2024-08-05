#!/bin/bash

# help
if [ -z $1 ]; then
    echo "Invalid Domain"
    exit 1
elif [ $1 == "help" ]; then
    echo "Delete virtual host , for Apache servers.
    delete-vhost [domain]
    Example :
        delete-vhost example.test"

    exit 1
else
    domain=$1
fi

# 1- Delete configuration file for your domain :
sudo rm "/etc/apache2/sites-available/$domain.conf"

if [ "$?" -ne 0 ]; then
    echo "Unknown Domain!";
    exit 1;
fi

# 2- Remove your domain from hosts :
last_host=$(grep -n "127.0.0.1	$domain" /etc/hosts | cut -d : -f 1)
if [ $last_host ]; then
    sudo sed -i "$last_host d" /etc/hosts
fi

# Done
echo "$domain was deleted successfully!"