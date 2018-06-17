# Updating and installing the repo updates
sudo apt-get update -y
sudo apt-get upgrade -y

# Installing new stuff
sudo apt-get install htop -y
sudo apt-get install vim-gnome -y
sudo apt-get install git -y
sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install fonts-powerline -y

# Making BASH case insensitive, just in case
if [ ! -a /home/leite/.inputrc ]; then echo '$include /etc/inputrc' > /home/leite/.inputrc; fi
echo 'set completion-ignore-case On' >> /home/leite/.inputrc

# Setting up ZSH
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s /home/leite/Workspace/dotfiles/zsh/zshrc /home/leite/.zshrc

# Setting up VIM environment
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s /home/leite/Workspace/dotfiles/vim/vimrc /home/leite/.vimrc