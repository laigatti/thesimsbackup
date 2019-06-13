@echo off

set /p dataAtual=<data.txt
git add saves\
git commit -m "%dataAtual%"
git push