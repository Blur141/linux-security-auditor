#!/bin/bash
# Advanced Security Hardening and Auditing Tool for Linux
# Author: Blur141

echo "=== Linux Security Hardening and Auditing Tool ==="

# Check for system updates
echo "[*] Checking for available updates..."
if command -v apt &>/dev/null; then
    sudo apt update && sudo apt upgrade -y
elif command -v pacman &>/dev/null; then
    sudo pacman -Syu --noconfirm
else
    echo "Unsupported package manager."
fi

# Check firewall status
echo "[*] Checking firewall status..."
if command -v ufw &>/dev/null; then
    sudo ufw status
elif command -v firewall-cmd &>/dev/null; then
    sudo firewall-cmd --state
else
    echo "No firewall tool detected."
fi

# Audit sudo usage
echo "[*] Auditing sudo usage..."
grep 'sudo' /var/log/auth.log 2>/dev/null || echo "No sudo logs found."

echo "=== Audit Complete ==="
