@echo off
echo ===================================================
echo Starting CrowdSense Local Server on port 3000...
echo ===================================================
echo Opening http://localhost:3000 in your browser...
start "" http://localhost:3000
python -m http.server 3000
if errorlevel 1 (
    echo Python server failed, trying npx serve...
    npx -y serve -p 3000 "%~dp0"
)
pause

