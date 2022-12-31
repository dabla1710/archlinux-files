# waybar - if case for wm
# on sway:
echo "(y/n) Are you on sway / save waybar-sway config ?"
read whichwm
if [[ $whichwm = "y" ]]
then 
	cp -r ~/.config/waybar ~/archlinux-files/waybar-sway/
	echo "waybar-sway config fetched"

else
	# on hyprland:
	#cp -r ~/.config/waybar ~/archlinux-files/waybar-hyprland/
	echo "(y/n) Are you on hyprland / save waybar-hyprland config ?"
	read whichwm

	if [[ $whichwm = "y" ]]
	then
		cp -r ~/.config/waybar ~/archlinux-files/waybar-hyprland/
		echo "waybar-hyprland config fetched"
	fi

fi

# neovim
cp -r ~/.config/nvim ~/archlinux-files/
echo "neovim fetched"
# alacritty
cp -r ~/.config/alacritty ~/archlinux-files/
echo "alacritty fetched"
# hyprland
cp -r ~/.config/hypr ~/archlinux-files/
echo "hyprland fetched"
# neofetch
cp -r ~/.config/neofetch ~/archlinux-files/
echo "neofetch fetched"
# sway
cp -r ~/.config/sway ~/archlinux-files/
echo "sway fetched"
# endless linux guide
cp ~/endless_linux_guide.txt ~/archlinux-files/
echo "endless_linux_guide fetched\n"

# upload to git
cd ~/archlinux-files
echo "(y/n) Do you want to save to git ?"
read want_git_upload
if [[ $want_git_upload = "y" ]]
then
	echo "Please enter your commit message"
	read git_message
	git add ./*
	git commit -m "$git_message"
	git push
	echo "Successfully pushed the commit"

fi

