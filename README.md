# Fresh Installation Guide

## Basic
- Connect firefox account
- Setup Github SSH Key
- Install theme , icons , wallpapers ... etc
- Hide menu bar for all applications 

## Install

* Run updates

```
sudo apt update && sudo apt upgrade 
```

* Utilities

```
sudo apt install curl wget htop vim nano p7zip-full unar tmux neofetch cmatrix lolcat exa ffmpeg fd-find jq bat lava cowsay figlet 
```

* Gnome apps
 
```
sudo apt install gnote gedit
```

* Chrome browser

```
sudo apt install google-chrome-stable
```

* GIMP

```
sudo apt install gimp
```

* LibreOffice

```
sudo apt install libreoffice
```

## Terminal 

- Install OhMyBash and set theme to duru

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

- Set theme to `duru`

```
nano ~/.bashrc

# then update the OSH_THEME key :
OSH_THEME="duru"
```

- Add my aliases

```
cat ./bash/my.bashrc >> ~/.bashrc
```

- Update bash

```
source .bashrc
```

- Set terminal theme 

visit https://gogh-co.github.io/Gogh and follow the instructions 


## Config

* Nano and Vim

```
cp nano/.nanorc vim/.vimrc ~/
```

* Xfce4 configs

```
cp -r xfce4/panel/ ~/.config/xfce4/

cp -r xfce4/terminal/ ~/.config/xfce4/

cp -r xfce4/help.rc ~/.config/xfce4/

cp -r xfce4/helpers.rc ~/.config/xfce4/

cp -r xfce4/xfconf/xfce-perchannel-xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
```

## Fonts

* FiraCode

```
sudo apt install fonts-firacode
```

* Nerd Fonts

```
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
```

* Windows Fonts

```
sudo apt install ttf-mscorefonts-installer -y
```

## Code

```
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt install code

# Install all extensions
cat ./code/extensions.txt | xargs -L 1 code --install-extension

# Manually copy ./code/settings.json and ./code/keyboard.json content to code's JSON files 
```

## Development

* GIT

```
sudo apt install git
```
* Docker 

```
sudo apt install apt-transport-https ca-certificates  software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker
sudo systemctl enable docker

# add user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# check docker is working
docker run hello-world
```

* C & C++

```
sudo apt install build-essential
```

* Node.js 

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# install latest version
nvm install node
```

* GoLang 

Download from https://go.dev/doc/install

```
# extract the compiler into opt/
sudo tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz

# create dir for go modules
mkdir ~/.go
```

* Java 

```
sudo apt install default-jdk
```

* Ruby 

```
sudo apt install rbenv

# install ruby-build
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# install latest version
rbenv install 3.1.2
```

* LAMP 

```
# apache server
sudo apt install apache2

sudo systemctl start apache2
sudo systemctl enable apache2

# PHP
sudo apt install php libapache2-mod-php sudo apt install openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip

# MySQL
sudo apt install mysql-server

# fix MySQL password issue
sudo mysql

mysql > ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

sudo mysql_secure_installation

# PHPMyAdmin
sudo apt install phpmyadmin
```

Now you are ready to go :D 
