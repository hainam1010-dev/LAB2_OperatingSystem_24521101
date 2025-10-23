#!/bin/bash

while true; do
  read -p "Nhập vào một số n (n >= 10): " n
  if [ "$n" -ge 10 ]; then
    break
  else
    echo "Số n phải lớn hơn hoặc bằng 10. Vui lòng nhập lại."
  fi
done

tong=0
for i in $(seq 1 $n); do
  tong=$((tong + i))
done

echo "Tổng các số từ 1 đến $n là: $tong"
