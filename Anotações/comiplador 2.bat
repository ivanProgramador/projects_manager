@echo off
setlocal

echo ==========================================
echo       INSTALACAO DA JVCL - DELPHI 12
echo ==========================================
echo.

set "RAD=C:\Program Files (x86)\Embarcadero\Studio\23.0"
set "JVCL=C:\projects_manager\JEDI\jvcl\jvcl"
set "LIB=%JVCL%\lib\d29\win32"
set "BPL=%RAD%\bin"

echo Verificando arquivos...
echo.

if not exist "%LIB%\JvCore.dcp" (
    echo ERRO: JvCore.dcp nao encontrado!
    echo.
    pause
    exit /b 1
)

echo OK - JVCL encontrada.
echo.

echo ==========================================
echo COPIANDO BPL PARA O DIRETORIO DO DELPHI
echo ==========================================
echo.

copy /Y "%LIB%\*.bpl" "%BPL%"

if errorlevel 1 (
    echo.
    echo ERRO ao copiar os BPL.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo COPIANDO DCP PARA O DIRETORIO DO DELPHI
echo ==========================================
echo.

set "DCP=C:\Users\Public\Documents\Embarcadero\Studio\23.0\Dcp"

if not exist "%DCP%" mkdir "%DCP%"

copy /Y "%LIB%\*.dcp" "%DCP%"

if errorlevel 1 (
    echo.
    echo ERRO ao copiar os DCP.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo        JVCL PREPARADA COM SUCESSO!
echo ==========================================
echo.
echo BPL copiados para:
echo %BPL%
echo.
echo DCP copiados para:
echo %DCP%
echo.
echo Agora abra o Delphi 12.
echo.
pause