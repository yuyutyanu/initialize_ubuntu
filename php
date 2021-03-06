#!/bin/sh

echo "Initialize Program"

echo "##########################################################"
sudo apt update
sudo apt -y install vim
sudo apt -y install php7.0 php7.0-mysql php7.0-dev php7.0-fpm php7.0-mbstring
sudo apt -y install mysql-server mysql-client
sudo apt -y install apache2
sudo apt -y install ruby
sudo apt -y install git
sudo apt -y install libapache2-mod-php7.0


echo "################### composer install #####################"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer config -g repositories.packagist composer https://packagist.jp
