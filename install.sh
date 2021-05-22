#!/bin/bash

git clone --recursive --depth=1 https://github.com/HwangHsing/backplus2/.git ~/vim-for-coding
cd ~
mv .vim .vimbak &> /dev/null
mv .vimrc .vimrcbak &> /dev/null
mv vim-for-coding .vim
ln -s .vim/vimrc .vimrc

#升级vim到8.2否则部分功能不可用
sudo yum install -y git gcc-c++ ncurses-devel python-devel cmake wget make
sleep 1
sudo yum install -y python36 python36-devel
sleep 1
cd ~
git clone https://github.com/vim/vim.git
sleep 1
cd vim
./configure --prefix=/usr/local/vim  --enable-pythoninterp=yes --enable-python3interp=yes --with-python-command=python --with-python3-command=python36
sleep 1
sudo make
sleep 1
sudo make install
sudo cp /usr/bin/vim /usr/bin/vim.backup
cd ~/vim/src
sudo cp vim /usr/bin
echo "PATH=\$PATH:/usr/local/vim/bin" >> /etc/profile
source /etc/profile

echo 'success! enjoy it!'
exit 0
