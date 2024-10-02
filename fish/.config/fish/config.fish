set -U fish_greeting # disable fish greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

fzf --fish | source

set -gx EDITOR "nvim"

# aliases
alias lg="exa --long --icons --git"
alias lt="exa --long --icons --tree --level=2 --git"
# neovim
abbr --add vim "nvim"
abbr --add vi "nvim"

# config
# -- edit
abbr --add ef "nvim $HOME/.config/fish/config.fish"
abbr --add ev "nvim $HOME/.config/nvim/" 
abbr --add em "nvim $HOME/.tmux.conf"
abbr --add et "nvim $HOME/.config/wezterm/wezterm.lua"

# -- change directory
abbr --add cc "cd $HOME/.config"
abbr --add cf "cd $HOME/.config/fish/"
abbr --add cv "cd $HOME/.config/nvim/"
abbr --add ct "cd $HOME/.config/wezterm//"

abbr --add sf "source $HOME/.config/fish/config.fish"
abbr --add st "source $HOME/.config/wezterm/wezterm.lua"

# others
abbr --add lg "lazygit"
abbr --add cl "clear"
