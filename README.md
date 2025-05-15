# vim-config
My customized Vim config for Python + ROS + remote

安装vim插件：

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



⚙️ 安装必要依赖（Node/Yarn/flake8/mypy）：

sudo apt install nodejs yarn python3-flake8 python3-mypy

pip install autopep8 isort
---------------------------------------------------------------------------------------------

----可能遇到报错（通常是arm操作系统）
解决方法：使用虚拟环境

    创建一个虚拟环境（推荐用于 Vim + ALE 的依赖隔离）

python3 -m venv ~/.venv/vim-env
source ~/.venv/vim-env/bin/activate

    在虚拟环境中安装依赖：

pip install autopep8 isort mypy

    设置 .vimrc 中 ALE 使用这个虚拟环境：

let g:ale_python_autopep8_executable = expand('~/.venv/vim-env/bin/autopep8')
let g:ale_python_isort_executable    = expand('~/.venv/vim-env/bin/isort')
let g:ale_python_mypy_executable     = expand('~/.venv/vim-env/bin/mypy')

✅ 安装完成后

    重新打开 Vim：

vim

运行插件安装命令：

    :PlugInstall





# Vim 配置：Python + ROS + 多终端 + 文档管理

本配置支持以下功能：

- ✅ Python 开发（语法高亮、补全、lint）
- ✅ ROS 开发支持（`.msg`、`.launch`等文件高亮）
- ✅ 远程 SSH 编辑与浮动终端（多终端支持）
- ✅ Markdown 文档管理（兼容 Obsidian、实时预览）

## 快速使用

```bash
git clone https://github.com/solarguo/vim-config.git
cp vim-config/.vimrc ~/
vim +PlugInstall +qall

