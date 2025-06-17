@echo off
cd /d "%~dp0"

REM Configurar nome e email (faça isso uma vez, depois pode remover)
git config --global user.name "souzado0800"
git config --global user.email "matheushopi.tw@gmail.com"

REM Inicializar git (ignora se já existir)
git init

REM Trocar para o branch master
git checkout -B master

REM (Opcional) Remover origin se já existir
git remote remove origin 2>nul

REM Adicionar o repositório remoto
git remote add origin https://github.com/Souzado0800/XStreaming.git

REM Adicionar todos os arquivos e comitar
git add .
git commit -m "Commit inicial - projeto XStreaming"

REM Forçar push para master
git push origin master --force

pause
