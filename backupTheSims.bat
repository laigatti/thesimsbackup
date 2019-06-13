@ECHO OFF

ECHO moving to repository folder
cd %repositoryFolder%

ECHO Setting enviroment variables
CALL ambientes.bat

ECHO copying the sims saves to repository
CALL copia-saves.bat

ECHO getting current date to commit message
python date.py

ECHO commiting saves
CALL commit.bat

ECHO backup finished.
pause