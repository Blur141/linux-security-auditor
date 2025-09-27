# Advanced Security Hardening and Auditing Tool (Linux)

## 📌 Overview
This is a beginner-friendly **Linux Security Hardening and Auditing Tool** created by Blur141.
It helps you quickly check your Linux system for security basics such as:

- Pending system updates
- Firewall status
- Sudo usage logs

The goal is to provide a simple, easy-to-understand tool for beginners to learn Linux security practices.

## ⚡ Features
- Detects your package manager (APT or Pacman)
- Checks system updates
- Verifies firewall status
- Audits sudo usage logs

## 🚀 Usage
1. Clone the repo:
   git clone git@github.com:Blur141/linux-security-auditor.git
   cd linux-security-auditor

2. Make the script executable (first time):
   chmod +x hardening.sh

3. Run the tool:
   ./hardening.sh

## 🧑‍💻 For Beginners
- What is this? A script that performs basic security checks on Linux
- Why use it? Learn Linux security auditing
- Can I expand it? Yes, add rootkit checks, user audits, etc.

## 📝 How it Works

The script `hardening.sh` performs the following tasks:

1. **System Updates**
   - Detects the package manager (APT for Debian/Ubuntu, Pacman for Arch Linux)
   - Runs update and upgrade commands to ensure your system is up-to-date

2. **Firewall Status**
   - Checks if UFW or firewalld is installed and reports current firewall status

3. **Sudo Usage Audit**
   - Reads `/var/log/auth.log` to show the last 20 sudo commands used
   - Helps you monitor administrative access on your system

4. **Password Policy Check**
   - Reads `/etc/login.defs` for password settings like `PASS_MAX_DAYS`, `PASS_MIN_DAYS`, and `PASS_WARN_AGE`

5. **Open Ports**
   - Checks listening TCP/UDP ports using `ss` or `netstat`
   - Helps identify exposed services

6. **Running Services**
   - Lists all active system services with `systemctl`

7. **Rootkit Check**
   - Uses `chkrootkit` if installed to detect potential rootkits

8. **System Summary**
   - Prints system info (`uname -a`), disk usage (`df -h`), and memory usage (`free -h`)

This helps beginners understand **what each section does** and how it contributes to Linux security auditing.


## 📂 Project Status
✅ Basic features implemented  
🔜 More checks coming soon

## 📌 Notes
- Tested on Debian/Ubuntu and Arch Linux
- Run with proper permissions (`sudo`)
