#!/bin/bash

# Exit immediately on error
set -e

# Files path
FIRMWARE="../../build/SpeedyBeeF405WING/bin/arducopter.bin"
BOOTLOADER="../../build/SpeedyBeeF405WING/bin/AP_Bootloader.bin"
BOOTLOADER_SIZE_KB=15

# Check
if [[ ! -f "$FIRMWARE" ]]; then
  echo "Not found firmware: $FIRMWARE"
  exit 1
fi

if [[ ! -f "$BOOTLOADER" ]]; then
  echo "Not found bootloader: $BOOTLOADER"
  exit 1
fi

python3 ../../Tools/scripts/make_intel_hex.py "$FIRMWARE" "$BOOTLOADER" "$BOOTLOADER_SIZE_KB"

echo "Successfully generated firmware with bootloader."
