curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
cp ~/.atuin/bin/env.fish ~/.cargo/

if $(gum confirm "Press (Y) to register a new account into Atuin or (N) if want to log back in."); then
  atuin register
else
  atuin login
fi
