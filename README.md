# vim-config
My customized Vim config for Python + ROS + remote


⚙️ 安装必要依赖（Node/Yarn/flake8/mypy）：

sudo apt install nodejs yarn python3-flake8 python3-mypy

pip install autopep8 isort




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

