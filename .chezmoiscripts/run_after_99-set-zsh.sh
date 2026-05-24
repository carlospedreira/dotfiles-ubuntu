#!/bin/bash
set -euo pipefail

if ! command -v zsh &>/dev/null; then
    sudo apt update
    sudo apt install -y zsh
fi

if [[ "$SHELL" != *"zsh"* ]]; then
    sudo chsh -s "$(command -v zsh)" "$(whoami)"
fi
