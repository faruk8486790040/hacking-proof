#!/bin/bash
# LEVEL 2 - OPERATION DHING COMMANDO
# Author: Defender Faruk

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

target="assam.gov.in"
echo -e "${RED}========================================${NC}"
echo -e "${GREEN}  LEVEL 2 - DHING COMMANDO MISSION${NC}"
echo -e "${RED}========================================${NC}"
echo -e "Target: ${YELLOW}$target${NC}"
echo -e "Commando: ${BLUE}Faruk${NC}"
echo "Date: $(date)"
echo "----------------------------------------"

echo -e "${YELLOW}[1] IP & DNS Recon...${NC}"
nslookup $target
echo ""

echo -e "${YELLOW}[2] Whois Info - Owner Check...${NC}"
whois $target | head -20
echo ""

echo -e "${YELLOW}[3] Port Scanning - Darwaza Check...${NC}"
echo "Checking common ports..."
nmap --top-ports 20 $target
echo ""

echo -e "${YELLOW}[4] Saving Full Report...${NC}"
{
echo "=== DHING COMMANDO REPORT ==="
echo "Date: $(date)"
echo "Target: $target"
echo "By: Defender Faruk"
echo "--------------------------"
nslookup $target
echo "--------------------------"
whois $target | head -20
echo "--------------------------"
nmap --top-ports 20 $target
} > level2_report.txt

echo -e "${GREEN}[+] Report Saved: level2_report.txt${NC}"
echo -e "${GREEN}[+] MISSION LEVEL 2 COMPLETE! JAI HIND!${NC}"
echo -e "${RED}========================================${NC}"
