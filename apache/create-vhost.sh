#!/bin/bash

# help
if [ $1 == "help" ]; then
    echo "Create virtual host , for Apache servers.
    create-vhost [domain] [public_dir] [user_selected_dir]
    Example :
        create-vhost example.test html my-project"

    exit 1
fi

# variables
domain=$1
public_dir=$2
user_selected_dir=$3

# set root dir
if [ -z $user_selected_dir ]; then
    root_dir="/var/www/$domain"
else
    root_dir="/var/www/$user_selected_dir"
fi

# set public path
public_path="$root_dir/$public_dir/"

# skip these steps , if we already have dir to use
if [ -z $user_selected_dir ]; then
    # 1- Inside var/www/ create your project dir (with the domain name):
    sudo mkdir -p $public_path

    # 2- Give it permissions and ownership :
    sudo chown -R $USER:$USER $public_path
    sudo chmod -R 755 $root_dir
fi

# 3- Create configuration file for your domain :
sudo touch "/etc/apache2/sites-available/$domain.conf"

# 4- Add the following lines :
echo "<VirtualHost *:80>
    ServerAdmin admin@$domain   
    ServerName $domain
    ServerAlias www.$domain
    DocumentRoot $public_path

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" | sudo tee -a "/etc/apache2/sites-available/$domain.conf" 1> /dev/null

# 5- Add your domain to hosts :
last_host=$(grep -n '127.0.0.1' /etc/hosts |tail -1|cut -f1 -d':')
sudo sed -i "$last_host a 127.0.0.1	$domain" /etc/hosts

# Done
echo "$domain was created successfully!"