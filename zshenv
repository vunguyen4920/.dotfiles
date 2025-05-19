export PATH=$HOME/.local/share/bob/nvim-bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export CODESTRAL_API_KEY=$(pass AI/codestral)
export OPENROUTER_API_KEY=$(pass AI/openrouter)
. "$HOME/.cargo/env"
