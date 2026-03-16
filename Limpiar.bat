@echo off
title Optimizador de Rendimiento Máximo
color 0A
echo =============================================
echo    OPTIMIZADOR DE RENDIMIENTO MÁXIMO
echo =============================================
echo.

:: Verificar si se ejecuta como administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ERROR: Este script debe ejecutarse como ADMINISTRADOR
    echo Haz clic derecho y selecciona "Ejecutar como administrador"
    pause
    exit /b
)

echo [1/10] Configurando rendimiento máximo del sistema...
:: Configurar para máximo rendimiento
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 2>nul
powercfg -change -monitor-timeout-ac 0
powercfg -change -disk-timeout-ac 0
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
echo ✓ Completado
echo.

echo [2/10] Ajustando configuración visual para rendimiento...
:: Configurar opciones visuales para rendimiento
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d ffffffff /f
echo ✓ Completado
echo.

echo [3/10] Limpiando archivos temporales...
:: Limpiar archivos temporales
del /f /s /q "%TEMP%\*.*" 2>nul
del /f /s /q "C:\Windows\Temp\*.*" 2>nul
del /f /s /q "C:\Windows\Prefetch\*.*" 2>nul
cleanmgr /sagerun:1 /quiet 2>nul
echo ✓ Completado
echo.

echo [4/10] Optimizando servicios de Windows...
:: Deshabilitar servicios innecesarios
sc config SysMain start= disabled
sc stop SysMain
sc config WSearch start= disabled
sc stop WSearch
sc config DiagTrack start= disabled
sc stop DiagTrack
sc config dmwappushservice start= disabled
sc stop dmwappushservice
echo ✓ Completado
echo.

echo [5/10] Optimizando rendimiento del procesador...
:: Optimizar CPU
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
echo ✓ Completado
echo.

echo [6/10] Limpiando archivos de sistema con DISM...
:: Limpiar y reparar archivos del sistema
DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase /Quiet
DISM /Online /Cleanup-Image /RestoreHealth /Quiet
sfc /scannow
echo ✓ Completado
echo.

echo [7/10] Optimizando configuración de red...
:: Optimizar red
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
echo ✓ Completado
echo.

echo [8/10] Desfragmentando discos (esto puede tomar varios minutos)...
:: Desfragmentar discos
defrag C: /O /U /V
echo ✓ Completado
echo.

echo [9/10] Limpiando archivos de Windows Update...
:: Limpiar cache de Windows Update
net stop wuauserv
del /f /s /q "C:\Windows\SoftwareDistribution\Download\*.*" 2>nul
net start wuauserv
echo ✓ Completado
echo.

echo [10/10] Aplicando configuración final...
:: Deshabilitar efectos visuales adicionales
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v AutoEndTasks /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_DWORD /d 5000 /f
echo ✓ Completado
echo.

echo =============================================
echo    OPTIMIZACIÓN COMPLETADA CON ÉXITO
echo =============================================
echo.
echo Se recomienda REINICIAR el sistema para
echo aplicar todos los cambios correctamente.
echo.
echo Presiona cualquier tecla para reiniciar ahora,
echo o cierra la ventana para reiniciar manualmente.
pause >nul
shutdown /r /t 10 /c "Reiniciando para aplicar optimizaciones..."