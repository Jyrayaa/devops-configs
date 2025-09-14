#!/bin/bash
# Monitor MySQL service and logs
# Author: <Nahid Hasan>
# Date: 14.09.2025
echo "🔹 Checking MySQL status..."
systemctl status mysql | head -n 10

echo "🔹 Recent errors:"
tail -n 20 /var/log/mysql/error.log || echo "No error log found"

echo "🔹 Slow queries:"
tail -n 20 /var/log/mysql/slow.log || echo "No slow query log found"
