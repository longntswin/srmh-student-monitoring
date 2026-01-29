#!/bin/bash

echo "🚀 Đang khởi động SRMH Server..."
echo ""
echo "📍 Server sẽ chạy tại: http://localhost:8000"
echo "🌐 Mở Safari và truy cập: http://localhost:8000"
echo ""
echo "⚠️  Nhấn Ctrl+C để dừng server"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Khởi động Python HTTP Server
python3 -m http.server 8000
