#!/bin/sh

apt update -y && apt upgrade -y && apt autoremove && apt clean
apt-get install ufw -y && apt-get install gnupg2 -y && apt-get install zsh -y
curl -sSL https://rvm.io/mpapis.asc | gpg --import
curl -sSL https://get.rvm.io | bash
. /etc/profile.d/rvm.sh
rvm install ruby-3.1.0
rvm use ruby-3.1.0 --default
gem install rake
sh -c "$(curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh)"
zsh && cd && printf "\n # Theme Damoekri \n autoload -Uz promptinit \n promptinit \n prompt damoekri" >> ~/.zshrc
. .zshrc
ufw allow 22 && ufw allow 80 && ufw allow 443 && ufw allow 3000 && ufw allow 3306 && ufw allow 4000 && ufw allow 5432 && ufw allow 7000 && ufw allow 6379 &&ufw allow 8000  && ufw allow 27017
ufw enable