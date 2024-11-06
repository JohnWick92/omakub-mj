yay -S --needed neovim --noconfirm

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
  # Use LazyVim
  git clone https://github.com/johnwick92/my-lazyvim ~/.config/nvim

  # Disable update notification popup in starter config
  sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua

fi
