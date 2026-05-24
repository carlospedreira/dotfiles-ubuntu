#!/bin/bash
set -euo pipefail

sudo apt install -y zsh
sudo chsh -s "$(command -v zsh)" "$(whoami)"
