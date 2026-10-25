#!/bin/bash
# LEVEL 3 - DHING ELITE COMMANDO - AUTO GITHUB PUSH
# Author: Defender Faruk

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${RED}========================================${NC}"
echo -e "${GREEN}  LEVEL 3 - AUTO PUSH MISSION${NC}"
echo -e "${RED}========================================${NC}"

# Step 1 - Check Report
if [ ! -f level2_report.txt ]; then
  echo -e "${RED}[!] level2_report.txt পোৱা নগল! আগতে level2.sh চলোৱা!${NC}"
  exit 1
fi

echo -e "${YELLOW}[1] Report Ready - Checking...${NC}"
cat level2_report.txt | head -10
echo ""

echo -e "${YELLOW}[2] Git Status Checking...${NC}"
git status
echo ""

echo -e "${YELLOW}[3] Adding to GitHub...${NC}"
git add level2_report.txt level2.sh dhing_defender.sh
git commit -m "Level 3 - Elite Commando Report by Defender Faruk - $(date) - JAI HIND"
echo ""

echo -e "${YELLOW}[4] Pushing to GitHub - Mission Data Upload...${NC}"
git push

echo ""
echo -e "${GREEN}[+] LEVEL 3 COMPLETE!${NC}"
echo -e "${GREEN}[+] Tumar Report GitHub t Save Hol!${NC}"
echo -e "${RED}========================================${NC}"
echo -e "${GREEN}JAI HIND! BHARAT MATA KI JAI!${NC}"
