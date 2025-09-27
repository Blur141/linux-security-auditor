#!/bin/bash
# Advanced Security Hardening and Auditing Tool for Linux
# Author: Blur141

echo "=== Linux Security Hardening and Auditing Tool ==="
echo ""

# -----------------------------
# System Update Check
# -----------------------------
echo "[*] Checking for available updates..."
if command -v apt &>/dev/null; then
    sudo apt update && sudo apt upgrade -y
elif command -v pacman &>/dev/null; then
    sudo pacman -Syu --noconfirm
else
    echo "Unsupported package manager."
fi
echo ""

# -----------------------------
# Firewall Status
# -----------------------------
echo "[*] Checking firewall status..."
if command -v ufw &>/dev/null; then
    sudo ufw status
elif command -v firewall-cmd &>/dev/null; then
    sudo firewall-cmd --state
else
    echo "No firewall tool detected."
fi
echo ""

# -----------------------------
# Sudo Usage Audit
# -----------------------------
echo "[*] Auditing sudo usage..."
if [ -f /var/log/auth.log ]; then
    grep 'sudo' /var/log/auth.log | tail -n 20 || echo "No sudo logs found."
else
    echo "Auth log not found."
fi
echo ""

# -----------------------------
# Password Policy Check
# -----------------------------
echo "[*] Checking password policy..."
if [ -f /etc/login.defs ]; then
    grep -E 'PASS_MAX_DAYS|PASS_MIN_DAYS|PASS_WARN_AGE' /etc/login.defs
else
    echo "/etc/login.defs not found."
fi
echo ""

# -----------------------------
# Open Ports
# -----------------------------
echo "[*] Checking open ports..."
if command -v ss &>/dev/null; then
    sudo ss -tuln
elif command -v netstat &>/dev/null; then
    sudo netstat -tuln
else
    echo "No tool available to check open ports."
fi
echo ""

# -----------------------------
# Running Services
# -----------------------------
echo "[*] Listing running services..."
if command -v systemctl &>/dev/null; then
    systemctl list-units --type=service --state=running
else
    echo "systemctl not found."
fi
echo ""

# -----------------------------
# Rootkit Check (basic)
# -----------------------------
echo "[*] Checking for rootkits (basic)..."
if command -v chkrootkit &>/dev/null; then
    sudo chkrootkit
else
    echo "chkrootkit not installed. Install it for rootkit scanning."
fi
echo ""

# -----------------------------
# System Info
# -----------------------------
echo "[*] System summary:"
uname -a
echo "Disk usage:"
df -h
echo "Memory usage:"
free -h
echo ""

echo "=== Audit Complete ==="
