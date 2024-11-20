# Needed for all installers
sudo pacman -Syyuu --noconfirm
sudo pacman -S curl git unzip fish --noconfirm

cp -r ~/.local/share/omakub/configs/fish ~/.config
cp -r ~/.local/share/omakub/configs/wezterm ~/.config
cp -r ~/.local/share/omakub/configs/kanata/ ~/.config
cp -r ~/.local/share/omakub/configs/systemd/ ~/.config

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do source $installer; done

echo "Finished installing all Terminal-based apps and configurations. Log out and log back in."
