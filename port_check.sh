#!/bin/bash

# ========================================
# Script: port_check.sh
# Author: Alexis Torres
# Description: Checks if a port is open on a host.
# Usage: ./port_check.sh google.com 80
# ========================================

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: ./port_check.sh <host> <port>"
  exit 1
fi

host=$1
port=$2

echo "Checking $host on port $port ..."
echo ""

nc -zv "$host" "$port"
