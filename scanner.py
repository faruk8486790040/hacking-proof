import socket
from datetime import datetime

target = "127.0.0.1"
print(f"[+] Dhing Defender Python Scan Started: {target}")
print(f"[+] Time: {datetime.now()}")

for port in [21, 22, 80, 443, 3000, 8000, 8080]:
    s = socket.socket()
    s.settimeout(0.5)
    try:
        s.connect((target, port))
        print(f"[OPEN] Port {port} is OPEN")
    except:
        print(f"[CLOSED] Port {port}")
    s.close()

print("[+] Scan Complete! Saved to python_report.txt")
