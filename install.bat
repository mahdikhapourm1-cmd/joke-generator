@echo off
CLS
echo.
echo ============================================
echo  Joke Generator - نصب و استقرار
echo ============================================
echo.

REM بررسی Node.js
where node >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Node.js نصب نیست. لطفاً Node.js 18+ را نصب کنید
    echo    دانلود: https://nodejs.org
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo ✅ Node.js نسخه: %NODE_VERSION%

where npm >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ npm نصب نیست
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('npm -v') do set NPM_VERSION=%%i
echo ✅ npm نسخه: %NPM_VERSION%
echo.

echo 📦 دانلود وابستگی‌ها...
call npm install
if errorlevel 1 goto error
echo ✅ وابستگی‌ها نصب شد
echo.

echo 🔨 ساخت پروژه برای تولید...
call npm run build
if errorlevel 1 goto error
echo ✅ ساخت تکمیل شد
echo.

echo ============================================
echo ✨ نصب و ساخت تکمیل شد!
echo ============================================
echo.
echo 📁 پوشه تولید شده: .\dist
echo 🌐 دامنه: mahdikhapourm1damin.com
echo 🔗 IP: 192.0.1.2
echo.
echo 🚀 گام‌های استقرار:
echo    1. پوشه dist را به Cloudflare Pages آپلود کنید
echo    2. دامنه سفارشی را تنظیم کنید
echo    3. SSL را فعال کنید
echo    4. تست کنید: https://mahdikhapourm1damin.com
echo.
echo 💻 برای توسعه محلی:
echo    npm run dev
echo.
echo 📋 فایل‌های اصلی:
echo    ✓ src/App.jsx - کامپوننت اصلی
echo    ✓ src/styles.css - استایل‌ها
echo    ✓ package.json - وابستگی‌ها
echo    ✓ vite.config.ts - تنظیمات Vite
echo.
echo 🎉 آماده برای استقرار!
echo.
pause
exit /b 0

:error
echo ❌ خطایی رخ داد
pause
exit /b 1
