
@echo off
REM Local preview server - double click to run
cd /d "%~dp0"

set PORT=8000
echo Starting local preview at http://localhost:%PORT%
echo Close this window to stop the server.

start "" cmd /c "timeout /t 1 > nul && start http://localhost:%PORT%"

where python > nul 2>&1
if %errorlevel%==0 (
    python -m http.server %PORT%
    goto :eof
)
where py > nul 2>&1
if %errorlevel%==0 (
    py -m http.server %PORT%
    goto :eof
)
echo.
echo [ERROR] Python not found. Install it with:
echo     winget install Python.Python.3.12
pause
 