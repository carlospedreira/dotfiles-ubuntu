#!/bin/bash
set -euo pipefail

# The chezmoi install script defaults to ~/bin when ~/.local/bin is missing.
# Move it to the standard location and clean up.

if [[ -f "${HOME}/bin/chezmoi" ]]; then
    mkdir -p "${HOME}/.local/bin"
    mv "${HOME}/bin/chezmoi" "${HOME}/.local/bin/chezmoi"
    rmdir "${HOME}/bin" 2>/dev/null || true
fi
