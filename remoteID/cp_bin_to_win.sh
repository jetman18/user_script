#!/bin/bash

# Đường dẫn file nguồn trong WSL
SOURCE_BIN="/home/tuan/ArduRemoteID/RemoteIDModule/ArduRemoteID-ESP32S3_DEV.bin"

# Đường dẫn đích trong Windows (được mount qua /mnt/)
DEST_DIR="/mnt/c/Users/nongd/Desktop/ESP_flash_tool/flash_from_wsl"

# Tạo thư mục đích nếu chưa tồn tại
mkdir -p "$DEST_DIR"

# Copy file
cp "$SOURCE_BIN" "$DEST_DIR"

# Kiểm tra kết quả
if [ $? -eq 0 ]; then
    echo "Đã copy file .bin sang Windows: $DEST_DIR"
else
    echo "Lỗi khi copy file"
fi