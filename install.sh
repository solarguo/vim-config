#!/bin/bash

echo "[🌱] 克隆 vim-config 仓库"
git clone https://github.com/solarguo/vim-config.git
cp vim-config/.vimrc ~/.vimrc

echo "[🔌] 安装 vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "[📦] 安装插件"
vim +PlugInstall +qall

echo "[📦] 安装 Python/Node 依赖"
sudo apt install -y nodejs yarn python3-pip
pip3 install autopep8 isort flake8 mypy
