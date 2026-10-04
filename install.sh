#!/bin/bash

# ============================================
# Joke Generator Installation Script
# mahdikhapourm1-cmd/joke-generator
# ============================================

set -e

echo "🎭 Joke Generator - نصب و استقرار"
echo "==================================="
echo ""

# بررسی Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js نصب نیست. لطفاً Node.js 18+ را نصب کنید"
    echo "   دانلود: https://nodejs.org"
    exit 1
fi

NODE_VERSION=$(node -v)
echo "✅ Node.js نسخه: $NODE_VERSION"

if ! command -v npm &> /dev/null; then
    echo "❌ npm نصب نیست"
    exit 1
fi

NPM_VERSION=$(npm -v)
echo "✅ npm نسخه: $NPM_VERSION"
echo ""

# دانلود وابستگی‌ها
echo "📦 دانلود وابستگی‌ها..."
npm install
echo "✅ وابستگی‌ها نصب شد"
echo ""

# ساخت برای تولید
echo "🔨 ساخت پروژه برای تولید..."
npm run build
echo "✅ ساخت تکمیل شد"
echo ""

# اطلاعات نهایی
echo "============================================"
echo "✨ نصب و ساخت تکمیل شد!"
echo "============================================"
echo ""
echo "📁 پوشه تولید شده: ./dist"
echo "🌐 دامنه: mahdikhapourm1damin.com"
echo "🔗 IP: 192.0.1.2"
echo ""
echo "🚀 گام‌های استقرار:"
echo "   1. پوشه dist را به Cloudflare Pages آپلود کنید"
echo "   2. دامنه سفارشی را تنظیم کنید"
echo "   3. SSL را فعال کنید"
echo "   4. تست کنید: https://mahdikhapourm1damin.com"
echo ""
echo "💻 برای توسعه محلی:"
echo "   npm run dev"
echo ""
echo "📋 فایل‌های اصلی:"
echo "   ✓ src/App.jsx - کامپوننت اصلی"
echo "   ✓ src/styles.css - استایل‌ها"
echo "   ✓ package.json - وابستگی‌ها"
echo "   ✓ vite.config.ts - تنظیمات Vite"
echo ""
echo "🎉 آماده برای استقرار!"
echo ""
