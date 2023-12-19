if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
set -gx EDITOR "code --wait"
fish_add_path /Users/jboulevart/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# aliases
alias lg="exa --long --icons --git"
alias lt="exa --long --icons --tree --level=2 --git"
alias zj="zellij"
alias lgt="lazygit"
alias vim="nvim"
alias mercantile="zj -s mercantile -l mercantile"
