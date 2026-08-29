@echo off
setlocal

set "RAD=C:\Program Files (x86)\Embarcadero\Studio\23.0"
set "PACKAGES=C:\projects_manager\JEDI\jvcl\jvcl\packages\d29"

echo ==========================================
echo   COMPILANDO JVCL - DELPHI 12 - WIN32
echo ==========================================
echo.

call "%RAD%\bin\rsvars.bat"

if errorlevel 1 (
    echo ERRO ao carregar o ambiente do Delphi.
    pause
    exit /b 1
)

call :BUILD JvCore
if errorlevel 1 goto ERRO

call :BUILD JvSystem
if errorlevel 1 goto ERRO

call :BUILD JvStdCtrls
if errorlevel 1 goto ERRO

call :BUILD JvControls
if errorlevel 1 goto ERRO

call :BUILD JvAppFrm
if errorlevel 1 goto ERRO

call :BUILD JvCustom
if errorlevel 1 goto ERRO

call :BUILD JvDlgs
if errorlevel 1 goto ERRO

call :BUILD JvDB
if errorlevel 1 goto ERRO

call :BUILD JvDocking
if errorlevel 1 goto ERRO

call :BUILD JvDotNetCtrls
if errorlevel 1 goto ERRO

call :BUILD JvGlobus
if errorlevel 1 goto ERRO

call :BUILD JvHMI
if errorlevel 1 goto ERRO

call :BUILD JvJans
if errorlevel 1 goto ERRO

call :BUILD JvManagedThreads
if errorlevel 1 goto ERRO

call :BUILD JvMM
if errorlevel 1 goto ERRO

call :BUILD JvNet
if errorlevel 1 goto ERRO

call :BUILD JvPageComps
if errorlevel 1 goto ERRO

call :BUILD JvPascalInterpreter
if errorlevel 1 goto ERRO

call :BUILD JvPluginSystem
if errorlevel 1 goto ERRO

call :BUILD JvPrintPreview
if errorlevel 1 goto ERRO

call :BUILD JvRuntimeDesign
if errorlevel 1 goto ERRO

call :BUILD JvTimeFramework
if errorlevel 1 goto ERRO

call :BUILD JvWizards
if errorlevel 1 goto ERRO

call :BUILD JvXPCtrls
if errorlevel 1 goto ERRO

echo.
echo ==========================================
echo       JVCL COMPILADA COM SUCESSO!
echo ==========================================
echo.
pause
exit /b 0


:BUILD

echo.
echo ------------------------------------------
echo Compilando %1.dproj
echo ------------------------------------------

if not exist "%PACKAGES%\%1.dproj" (
    echo ERRO: %1.dproj nao encontrado!
    exit /b 1
)

msbuild "%PACKAGES%\%1.dproj" /t:Build /p:Config=Release /p:Platform=Win32

if errorlevel 1 (
    echo.
    echo ERRO AO COMPILAR: %1
    exit /b 1
)

echo.
echo OK: %1
exit /b 0


:ERRO

echo.
echo ==========================================
echo       COMPILACAO INTERROMPIDA
echo ==========================================
echo.
echo Verifique o erro acima.
echo.
pause
exit /b 1