#!/bin/sh
set -eu

# Overwrite the existing LibreSpeed CSS file
cp -f /opt/naked-style.css /config/www/style.css

# Best-effort permissions
chown abc:abc /config/www/style.css 2>/dev/null || true
