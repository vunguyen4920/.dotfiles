#!/usr/bin/env bash
#
# Install homebrew and essential packages

if ! type aider > /dev/null 2>&1; then
  echo "Installing Aider..."
  sh -c "$(curl -LsSf https://aider.chat/install.sh | sh)"
fi

if ! type ollama > /dev/null 2>&1; then
  echo "Installing Ollama..."
  sh -c "$(curl -fsSL https://ollama.com/install.sh | sh)"
fi

if ! type opencode > /dev/null 2>&1; then
  echo "Installing Opencode..."
  curl -fsSL https://opencode.ai/install | bash
fi

if ! type claude > /dev/null 2>&1; then
  echo "Installing Claude..."
  curl -fsSL https://claude.ai/install.sh | bash
fi

if ! type agent > /dev/null 2>&1; then
  echo "Installing Cursor..."
  curl https://cursor.com/install -fsS | bash
fi

echo "Agents installed."
