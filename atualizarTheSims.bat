@ECHO OFF

ECHO moving to repository folder
cd %repositoryFolder%

setlocal
:PROMPT
SET /P AREYOUSURE=Voce tem certeza que deseja atualizar? Progressos nao salvos neste computador serao perdidos(S/[N])?
IF /I "%AREYOUSURE%" NEQ "S" GOTO END

ECHO cleaning repo
git reset --hard

ECHO updating
git pull

ECHO copying updated saves to the sims folder
XCOPY %folder% %theSimsFolder% /Y

:END
endlocal