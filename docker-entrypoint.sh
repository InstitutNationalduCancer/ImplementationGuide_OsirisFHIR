#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

# Trace execution
[[ "${DEBUG}" ]] && set -x

export STATIC_ROOT="${STATIC_ROOT:-/var/www/static/osiris-ig}"

rm -rf "${STATIC_ROOT}" && cp -r ./output "${STATIC_ROOT}"