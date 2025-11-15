#!/usr/bin/env bash
#
# sys-info.sh - Simple system information reporter
#
# Provides readable output of CPU, memory, disk and OS details.
#

set -Eeuo pipefail

log() {
    local level="$1"; shift
    printf "[%s] %s\n" "$level" "$*"
}

if [[ ${1:-} == "--help" ]]; then
    echo "Usage: ./sys-info.sh"
    echo "Prints system information in a clean, readable format."
    exit 0
fi

log INFO "Gathering system information..."

OS=$(uname -s)
KERNEL=$(uname -r)
UPTIME=$(uptime -p || true)
CPU=$(grep -m1 "model name" /proc/cpuinfo | cut -d: -f2 | sed 's/^[ ]*//')
MEM=$(free -h | awk '/Mem/ {print $3 "/" $2}')
DISK=$(df -h / | awk '/\// {print $3 "/" $2}')
USER=$(whoami)

echo ""
echo "  🖥  SYSTEM INFORMATION"
echo "  ----------------------"
echo "  OS:        $OS"
echo "  Kernel:    $KERNEL"
echo "  Uptime:    $UPTIME"
echo "  User:      $USER"
echo ""
echo "  🔧 HARDWARE"
echo "  ----------------------"
echo "  CPU:       $CPU"
echo "  Memory:    $MEM"
echo "  Disk:      $DISK"
echo ""

log INFO "Done."
