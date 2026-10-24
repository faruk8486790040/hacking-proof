#!/bin/bash

# =========================================
# OPERATION DHING DEFENDER
# Author: Faruk - Bharat Defender
# Mission: Desh ke liye seekhunga
# =========================================

# Color - Hacker Look
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

target="assam.gov.in"
date=$(date)

echo -e "${GREEN}"
echo "      JAI HIND! BHARAT MATA KI JOI!"
echo "      OPERATION DHING STARTED"
echo -e "${NC}"
echo "Date: $date"
echo "Defender: Faruk"
echo "Target: $target"
echo "----------------------------------------"

echo -e "${YELLOW}[1] Checking IP Address...${NC}"
nslookup $target

echo ""
echo -e "${YELLOW}[2] Checking DNS Info...${NC}"
dig $target +short

echo ""
echo -e "${YELLOW}[3] Saving Report...${NC}"
echo "Report for $target on $date" > report.txt
nslookup $target >> report.txt
echo "Saved to report.txt"

echo ""
echo -e "${GREEN}[+] MISSION COMPLETE! JAI HIND!${NC}"
