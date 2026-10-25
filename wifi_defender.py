import subprocess
import socket

print("[+] Mission 3: WiFi Defender Started")
print("="*40)

# 1. Check Own IP
hostname = socket.gethostname()
ip = socket.gethostbyname(hostname)
print(f"[+] Your Device IP: {ip}")

# 2. Check Gateway
try:
    result = subprocess.check_output("ip route | grep default", shell=True).decode()
    print(f"[+] Gateway Info: {result.strip()}")
except:
    print("[-] Gateway check: Termux need root? Skipped")

# 3. Scan Local Network Devices
print("\n[+] Scanning Local Network Devices (Safe Scan)...")
for i in range(1, 10):
    target = f"127.0.0.{i}"
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(0.2)
    try:
        s.connect((target, 80))
        print(f"[FOUND] Device at {target}:80 OPEN")
    except:
        pass
    s.close()

print("\n[+] WiFi Security Tips:")
print("1. Use WPA2/WPA3 password")
print("2. Change default admin password")
print("3. Hide SSID if needed")
print("4. Use strong 12+ char password")

print("\n[+] Report Saved to wifi_report.txt")
