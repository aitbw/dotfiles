set -gx EDITOR nano

# Add N to current PATH
set -gx N_PREFIX $HOME/n
set -gx PATH $PATH $N_PREFIX/bin

# Add Rust to current PATH
set -gx RUST_PREFIX $HOME/.cargo
set -gx PATH $PATH $RUST_PREFIX/bin

source ~/.asdf/asdf.fish
source ~/.config/fish/functions/aliases.fish

starship init fish | source

