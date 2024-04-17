#!/bin/bash

source scripts/colors.sh

echo -e "${YELLOW}Reversing Bootstrap...${NC}"
git restore . && git clean -f
rm -rf android/
rm -rf ios/
rm -rf lib/src/sample/
rm -rf linux/
rm -rf macos/
rm -rf web/
rm -rf windows/
echo -e "${GREEN}All set! You can start over again.${NC}"