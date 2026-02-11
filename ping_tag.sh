#!/bin/bash

# ========================================
# Script: ping_test.sh
# Author: Alexis Torres
# Description: Tests connectivity to a host.
# Usage: ./ping_test.sh google.com
# ========================================

if [ -z "$1" ]; then
  echo "Usage: ./ping_test.sh <hostname>"
  exit 1
fi

echo "Pinging $1 ..."
echo ""

ping -c 4 "$1"
