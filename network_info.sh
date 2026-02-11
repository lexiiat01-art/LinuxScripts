#!/bin/bash

# ========================================
# Script: network_info.sh
# Author: Alexis Torres
# Description: Displays basic network information.
# Usage: ./network_info.sh
# ========================================

echo "===== NETWORK INFORMATION ====="
echo ""

echo "IP Address:"
ip addr show | grep "inet " | grep -v 127.0.0.1

echo ""
echo "Default Gateway:"
ip route | grep default

echo ""
echo "DNS Servers:"
cat /etc/resolv.conf | grep nameserver

echo ""
echo "Network check complete."
