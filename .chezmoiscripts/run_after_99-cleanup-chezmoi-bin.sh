#!/bin/bash
set -euo pipefail

# The chezmoi install script defaults to ~/bin when ~/.local/bin is missing.
# Copy it to the standard location and clean up.

if [[ -f "${HOME}/bin/chezmoi" ]]; then
    mkdir -p "${HOME}/.local/bin"

    # Copy rather than move to avoid disturbing the running chezmoi process
    if [[ ! -f "${HOME}/.local/bin/chezmoi" ]]; then
        cp "${HOME}/bin/chezmoi" "${HOME}/.local/bin/chezmoi"
        chmod +x "${HOME}/.local/bin/chezmoi"
    fi

    rm -f "${HOME}/bin/chezmoi"
    rmdir "${HOME}/bin" 2>/dev/null || true
fi
