#!/bin/bash
echo "[+] Dhing Defender Auto Scan Started..."
echo "[+] Scanning ports..."
nmap -F 127.0.0.1 > scan_report.txt
echo "[+] Report saved!"
git add .
git commit -m "Auto defend report $(date)"
echo "[+] Local commit done! Use git push with token to upload"
cat scan_report.txt
