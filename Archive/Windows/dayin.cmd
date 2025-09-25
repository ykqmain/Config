net stop spooler
del /q /f %systemroot%\System32\spool\PRINTERS\*.*
net start spooler
pause
