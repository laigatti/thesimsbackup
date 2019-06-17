chcp 1252
@echo off
CALL  ambientes.bat

echo  copying from %theSimsFolder% to %folder%
REM   run copy 
XCOPY %theSimsFolder% %folder% /Y
