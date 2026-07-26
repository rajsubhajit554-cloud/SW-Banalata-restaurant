@echo off
title SW Banalata Restaurant - Git Auto Update
color 0A

echo ===================================================
echo     SW Banalata Restaurant - Git Auto Update
echo ===================================================
echo.

echo [1/3] Staging modified and new files...
git add .

echo.
set /p commit_msg="Enter commit message (Press ENTER for 'Website update'): "
if "%commit_msg%"=="" set commit_msg=Website update

echo.
echo [2/3] Committing changes with message: "%commit_msg%"...
git commit -m "%commit_msg%"

echo.
echo [3/3] Pushing changes to GitHub repository...
git push -u origin main

echo.
if %ERRORLEVEL% EQU 0 (
    echo ===================================================
    echo      SUCCESS: GitHub repository updated!
    echo ===================================================
) else (
    echo ===================================================
    echo      ERROR: Failed to push to GitHub.
    echo      Please check your internet connection or git login.
    echo ===================================================
)

echo.
pause
