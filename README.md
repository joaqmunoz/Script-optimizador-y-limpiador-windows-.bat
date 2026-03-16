Script Limpiador y Optimizador para Windows
Descripción
Este script batch (.bat) automatiza tareas de limpieza y optimización del sistema operativo Windows para mejorar el rendimiento general del equipo.

 Requisito Importante
Ejecutar como Administrador: Este script requiere permisos de administrador para funcionar correctamente. Haz clic derecho sobre el archivo y selecciona "Ejecutar como administrador".

Funciones del Script
El script realiza las siguientes optimizaciones:

1. Configuración de Energía
Establece el plan de energía en "Alto rendimiento"

Desactiva suspensión, apagado de monitor e hibernación

2. Ajustes Visuales
Configura Windows para priorizar rendimiento sobre efectos visuales

Desactiva animaciones y reduce retrasos en menús

3. Limpieza de Archivos
Elimina archivos temporales del sistema y usuario

Limpia carpeta Prefetch

Ejecuta Liberador de espacio en disco (cleanmgr)

4. Servicios del Sistema
Desactiva servicios no esenciales:

SysMain (Superfetch)

Windows Search

DiagTrack (Experiencias del usuario y telemetría)

dmwappushservice

5. Optimización de CPU y Memoria
Ajusta prioridad de procesos

Optimiza uso de memoria del sistema

6. Mantenimiento del Sistema
Ejecuta DISM para limpiar y reparar imagen del sistema

Ejecuta Comprobador de archivos del sistema (SFC)

7. Optimización de Red
Ajusta parámetros TCP/IP para mejor rendimiento

8. Desfragmentación
Optimiza y desfragmenta unidad C:

9. Windows Update
Limpia caché de Windows Update

Instrucciones de Uso
Descarga el archivo Limpiar.bat

Guardalo en una ubicación fácil de recordar (ej. Escritorio)

Haz clic derecho sobre el archivo

Selecciona "Ejecutar como administrador"

Sigue las instrucciones en pantalla

Al finalizar, el sistema se reiniciará automáticamente para aplicar los cambios

Tiempo de Ejecución
Aproximadamente 10-20 minutos, dependiendo de la velocidad del equipo

La desfragmentación y el escaneo SFC son los procesos que más tiempo pueden tomar

Notas Importantes
Es recomendable guardar todo trabajo antes de ejecutar el script

El equipo se reiniciará al finalizar el proceso

Algunas configuraciones pueden desactivar funciones visuales de Windows

Los servicios deshabilitados pueden reactivarse manualmente desde servicios.msc

Compatibilidad
Windows 10 (todas las versiones)

Windows 11 (todas las versiones)

Windows 8.1 y 8 (funcionalidad limitada)

Windows 7 (funcionalidad limitada)

Advertencia
Este script modifica configuraciones del sistema. Usalo bajo tu propio criterio. Revisa el código antes de ejecutarlo si tienes dudas sobre su funcionamiento.

Creado por joaqmunoz
