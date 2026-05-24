#!/bin/bash
set -euo pipefail

export PATH="${HOME}/.local/bin:${PATH}"

if [[ -x "${HOME}/.local/bin/mise" ]]; then
    mise install
fi
