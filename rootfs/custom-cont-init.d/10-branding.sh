#!/bin/sh
set -eu

# LibreSpeed serves from /config/www (persisted)
WWW="/config/www"

# Only apply branding if our files exist in the image
if [ -d /opt/branding ]; then
  mkdir -p "$WWW"

  # Copy branding in (overwrite each start so updates apply after redeploy)
  cp -f /opt/branding/naked.css "$WWW/naked.css" 2>/dev/null || true
  cp -f /opt/branding/index.html "$WWW/index.html" 2>/dev/null || true

  # Make sure perms are sane (ignore failures)
  chown -R abc:abc "$WWW" 2>/dev/null || true
fi
