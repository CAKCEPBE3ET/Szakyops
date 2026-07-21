#!/usr/bin/env bash
set -e

if [[ $EUID -ne 0 ]]; then
    echo "This uninstaller must be run as root."
    echo "Use: sudo ./uninstall.sh"
    exit 1
fi

echo "Removing szakyops toolset..."

rm -f /usr/local/bin/szakyops

rm -rf /opt/szakyops

echo "Szakyops has been successfully uninstalled."
