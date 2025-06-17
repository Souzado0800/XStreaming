@echo off
cd /d "%~dp0"

REM CONFIGURAÇÃO DO GIT
git config --global user.name "souzado0800"
git config --global user.email "ninjatokyo712@gmail.com"

REM INICIALIZAÇÃO (ignora se já existir)
git init

REM REMOVE ORIGIN ANTIGA CASO EXISTA
git remote remove origin 2>nul

REM ADICIONA ORIGIN NOVAMENTE
git remote add origin https://github.com/Souzado0800/XStreaming.git

REM ADICIONA TODOS OS ARQUIVOS E FAZ COMMIT
git add .
git commit -m "Commit inicial do projeto XStreaming"

REM CRIA O BRANCH MAIN (CASO NÃO EXISTA)
git branch -M main

REM FAZ O PUSH
git push -u origin main

pause
