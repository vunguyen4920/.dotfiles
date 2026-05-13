export PATH=$HOME/.local/share/bob/nvim-bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export CODESTRAL_API_KEY=$(pass AI/codestral)
export OPENROUTER_API_KEY=$(pass AI/openrouter)
. "$HOME/.cargo/env"
export PATH="$(npm config get prefix)/bin:$PATH"
export RUSTUP_HOME=~/.rustup
export PATH="$(brew --prefix rustup)/bin:$PATH"
export PATH=/Users/nguyenlongvu/.opencode/bin:$PATH
export OLLAMA_API_BASE=http://127.0.0.1:11434
export OLLAMA_CONTEXT_LENGTH=8192
