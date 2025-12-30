@echo off
echo ---------------------------------------
echo   Ricardos Track Viewer - Update Tool
echo ---------------------------------------
echo.

:: 1. Alle neuen Änderungen vormerken
git add .

:: 2. Status zeigen
git status --short
echo.

:: 3. Nach Nachricht fragen
set /p msg="Was hast du geaendert? (Einfach Enter fuer 'Update'): "
if "%msg%"=="" set msg=Update

:: 4. Speichern (Commit)
git commit -m "%msg%"

:: 5. Hochladen (Push)
echo.
echo Lade hoch zu GitHub...
git push -u origin main

echo.
echo Fertig!
pause
