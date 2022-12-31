# !/bin/bash

##### MUST-HAVES

# Install yay
sudo pacman -S yay
# Install zsh
sudo pacman -S zsh --noconfirm --needed
# changing default shell to zsh (requires relog)
# chsh -s /bin/zsh
chsh -s /bin/zsh
# Install neovim
sudo pacman -S nvim --no-confirm --needed
# Install vim-plug
yay -S vim-plug
# ToDo! Autoload nvim config from git ?
# config files from github, no WM or DE yet
git clone https://github.com/dabla1710/archlinux-files ~
cd ~/archlinux-files
cp -r alacritty nvim waybar neofetch ~/.config/
cp endless_linux_guide.txt ~

# Installing and updating mlocate
sudo pacman -S mlocate
sudo updatedb

# copy config (run :PlugInstall after in nvim)
# cp init.vim ~/.config/nvim/

# Install oh-my-zsh (zsh autosetup) (curl and git necessary)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel 10k theme (configure with 'p10k configure')
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# alacritty-theme
git clone https://github.com/eendroroy/alacritty-theme.git ~/.alacritty-colorscheme


##### i3 related
# do if i3 statement later
# autotiling (needs to be enabled in i3 config)
# yay -S autotiling


##### TODO if cases for WM / DE
#### Sway related
# wayland support and helper xlsclients
sudo pacman -S xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland
# exec_always autotling in config
#yay -S autotling


##### CLI applications
# cmatrix
#sudo pacman -S cmatrix
# ddgr (command line search)
yay -S ddgr


##### GUI applications
# discord
sudo pacman -S discord
sudo pacman -S thunderbird
# onlyoffice
yay -S onlyoffice-bin
yay -S teams
yay -S skypeforlinux-stable-bin
yay -S brave-bin

