if status is-interactive
    keychain --eval ~/.ssh/github_ed25519 | source
    starship init fish | source
    mise activate fish | source
    zoxide init fish | source
    atuin init fish | source
    set -e CARGO_HOME
    # Commands to run in interactive sessions can go here
end
