yay -S kanata
sudo gropuadd uinput
sudo usermod -aG uinput "$USER"
sudo usermod -aG input "$USER"
echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/99-inputs.rules
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo modprobe uinput
systemctl --user daemon-reload
systemctl --user enable kanata
