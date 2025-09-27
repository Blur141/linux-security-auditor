Advanced Security Hardening and Auditing Tool (Linux)
📌 Overview

This is a beginner-friendly Linux Security Hardening and Auditing Tool created by Blur141.
It helps you quickly check your Linux system for security basics such as:

Pending system updates

Firewall status

Sudo usage logs

The goal is to provide a simple, easy-to-understand tool for beginners to learn Linux security practices.

⚡ Features

Automatically detects your package manager (APT for Debian/Ubuntu or Pacman for Arch Linux).

Checks for system updates and upgrades.

Verifies the firewall status of your system.

Audits sudo usage logs.

🚀 Usage

Clone the repository:
git clone git@github.com
:Blur141/linux-security-auditor.git
cd linux-security-auditor

Make the script executable (first time only):
chmod +x hardening.sh

Run the tool:
./hardening.sh

🧑‍💻 For Beginners

What is this?
A script that performs basic security checks on Linux.

Why use it?
To learn Linux security auditing and get hands-on practice.

Can I expand it?
Absolutely! You can add more checks like rootkit detection, open ports, user audits, etc.

📂 Project Status

✅ Basic features implemented
🔜 More security checks will be added in future updates

👤 Author

Created by Blur141
This is a portfolio project for learning Linux security, scripting, and GitHub workflow.

📌 Notes

Tested on Debian/Ubuntu and Arch Linux.

Ensure you run the script with proper permissions (sudo) to perform updates and audit logs.
