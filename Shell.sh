#!/bin/bash
echo "hello,world 开始环境部署Centos/Unbuntu/Mac 如果没有homebrew 需先安装 yum apt-get brew"
if which apt-get >/dev/null;then
	echo "apt-get"
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git ripgrep
elif which yum >/dev/null;then
	echo "yum"
	sudo yum install -y gcc vim git ctags xclip python-setuptools python-devel zsh cscope 
	git clone git://github.com/joelthelion/autojump.git
    sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
    sudo yum install -y ripgrep
fi

if which brew >/dev/null;then
	echo "brew"
	brew install vim ctags git autojump ripgrep
fi
#cscope 安装
sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
yum install zsh -y
chsh -s /bin/zsh root
echo $SHELL
yum install wget git -y
# oh-my-zsh 安装
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sleep 1
/bin/cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
#安装autosuggestion
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
sleep 1
#安装 highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sleep 1
source ~/.zshrc

#sudo chsh -s /bin/zsh
