@echo off
chcp 65001 >nul
title Atualizacao Dashboard

where python >nul 2>&1
if %errorlevel% == 0 ( set PYTHON=python ) else ( set PYTHON=python3 )

echo Rodando atualizacao...
echo.

%PYTHON% "%~dp0atualizar_dashboard.py"
set SAIDA=%errorlevel%

echo.
if %SAIDA% neq 0 (
    echo ERRO! Veja mensagem acima.
    echo.
    pause
    exit /b 1
)

echo SUCESSO! Dashboard atualizado.
echo.

:: Publicar no GitHub automaticamente
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo Git nao encontrado. Suba o index.html manualmente no GitHub.
    echo.
    pause
    exit /b 0
)

echo Publicando no GitHub...
cd /d "%~dp0"
git add index.html
git commit -m "Atualiza dashboard %date% %time%"
git push

if %errorlevel% == 0 (
    echo.
    echo Publicado no GitHub com sucesso!
) else (
    echo.
    echo Erro ao publicar no GitHub.
    echo Suba o index.html manualmente.
)

echo.
pause
