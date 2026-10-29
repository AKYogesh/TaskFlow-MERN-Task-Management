@echo off
title TaskFlow - Task Management System
cls
echo ============================================================
echo      TaskFlow - Modern Task Management System (MERN)
echo ============================================================
echo.
echo [1/3] Checking Node.js environment...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed or not in PATH!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)
echo       Node.js is ready.

echo.
echo [2/3] Launching TaskFlow Backend (Express + MongoDB on Port 5000)...
start "TaskFlow Backend [Port 5000]" cmd /k "cd backend && npm run dev"

echo.
echo [3/3] Launching TaskFlow Frontend (React + Vite on Port 5173)...
start "TaskFlow Frontend [Port 5173]" cmd /k "cd frontend && npm run dev"

echo.
echo ============================================================
echo  TaskFlow services have launched successfully!
echo   - Backend REST API: http://localhost:5000/api/tasks
echo   - Frontend UI:      http://localhost:5173
echo ============================================================
echo.
echo Opening TaskFlow in your web browser...
timeout /t 3 >nul
start http://localhost:5173

echo.
echo (You can close this launcher window now; the app continues running in the two server windows.)
pause
