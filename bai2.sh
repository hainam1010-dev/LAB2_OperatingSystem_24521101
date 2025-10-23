#!/bin/bash

MSSV_CUA_TOI="24521101"

while true; do
  read -p "Nhập họ và tên: " ten
  read -p "Nhập MSSV (phải là ${MSSV_CUA_TOI}): " mssv_nhap

  if [ "$mssv_nhap" = "$MSSV_CUA_TOI" ]; then
    echo
    echo "--- Nhập thành công! ---"
    break
  else
    echo
    echo "SAI MSSV! Vui lòng nhập lại."
    echo
  fi
done

echo "Thông tin sinh viên đã xác nhận:"
echo "Họ và tên: $ten"
echo "MSSV: $mssv_nhap"
