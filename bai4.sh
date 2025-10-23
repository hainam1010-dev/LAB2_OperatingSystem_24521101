#!/bin/bash

ten_file="test.txt"

# Tạo file test nếu chưa có
if [ ! -f "$ten_file" ]; then
  echo "Xin chào các bạn sinh viên." > "$ten_file"
  echo "Đây là một file văn bản dùng để kiểm tra." >> "$ten_file"
  echo "Chúc các bạn học tốt môn Hệ điều hành." >> "$ten_file"
fi

read -p "Nhập chuỗi bạn muốn tìm trong file: " chuoi_can_tim

if grep -q "$chuoi_can_tim" "$ten_file"; then
  echo
  echo "=> TÌM THẤY chuỗi '$chuoi_can_tim' trong file '$ten_file'."
else
  echo
  echo "=> KHÔNG TÌM THẤY chuỗi '$chuoi_can_tim' trong file '$ten_file'."
fi
