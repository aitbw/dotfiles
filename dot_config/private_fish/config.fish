set -gx EDITOR nano

# Add N to current PATH
set -gx N_PREFIX $HOME/n
set -gx PATH $PATH $N_PREFIX/bin

# Add Rust to current PATH
set -gx RUST_PREFIX $HOME/.cargo
set -gx PATH $PATH $RUST_PREFIX/bin

# Add asdf to current PATH
set -gx PATH $PATH $HOME/bin

# Add asdf data and shims to current PATH
set -gx ASDF_DATA_DIR $HOME/.asdf
set -gx PATH $PATH $ASDF_DATA_DIR/shims

source ~/.config/fish/functions/aliases.fish

starship init fish | source

# set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g
