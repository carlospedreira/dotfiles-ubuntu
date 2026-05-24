#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install -y curl git ca-certificates libatomic1 libicu78
