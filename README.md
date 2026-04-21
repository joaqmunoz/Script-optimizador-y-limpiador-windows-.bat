# Windows System Optimization Script

## Descripción

Script de automatización desarrollado en Batch (.bat) para la limpieza, optimización y mantenimiento del sistema operativo Windows. Su objetivo es mejorar el rendimiento general del equipo mediante la ejecución de tareas administrativas que normalmente se realizan de forma manual.

El script integra múltiples procesos del sistema en un flujo automatizado, permitiendo reducir tiempos de mantenimiento y estandarizar configuraciones de optimización.

---

## Características Principales

- Configuración del sistema en modo alto rendimiento
- Desactivación de funciones innecesarias (suspensión, hibernación, efectos visuales)
- Eliminación de archivos temporales del sistema y usuario
- Limpieza de caché de Windows Update
- Ejecución automatizada de herramientas del sistema (DISM y SFC)
- Optimización de servicios del sistema
- Ajustes de red (parámetros TCP/IP)
- Optimización de uso de CPU y memoria
- Desfragmentación de disco
- Ejecución completa en un solo flujo automatizado

---

## Funcionalidades

### Configuración de Energía
- Activación del plan de alto rendimiento
- Desactivación de suspensión, apagado de monitor e hibernación

### Ajustes Visuales
- Prioridad al rendimiento sobre efectos gráficos
- Reducción de animaciones y latencias en interfaz

### Limpieza del Sistema
- Eliminación de archivos temporales
- Limpieza de carpeta Prefetch
- Ejecución del liberador de espacio en disco

### Optimización de Servicios
Desactivación de servicios no esenciales:
- SysMain (Superfetch)
- Windows Search
- DiagTrack (telemetría)
- dmwappushservice

### Mantenimiento del Sistema
- Ejecución de DISM para reparación de imagen
- Ejecución de SFC para verificación de integridad

### Optimización de Red
- Ajuste de parámetros TCP/IP para mejorar conectividad

### Almacenamiento
- Desfragmentación de la unidad principal

---

## Instalación y Uso

### Requisitos

- Sistema operativo Windows
- Permisos de administrador

### Ejecución

1. Descargar el archivo `Limpiar.bat`
2. Ejecutar como administrador:
   - Clic derecho sobre el archivo
   - Seleccionar "Ejecutar como administrador"
3. Seguir las instrucciones en pantalla

El sistema se reiniciará automáticamente al finalizar para aplicar los cambios.

---

## Tiempo de Ejecución

- Duración estimada: 10 a 20 minutos
- Puede variar según el hardware del equipo
- Procesos más intensivos:
  - Desfragmentación de disco
  - Verificación del sistema (SFC)

---

## Resultados Esperados

- Reducción del tiempo de mantenimiento manual en aproximadamente 50%–60%
- Mejora en el rendimiento general del sistema
- Liberación de espacio en disco
- Mayor estabilidad del sistema operativo

---

## Compatibilidad

- Windows 11
- Windows 10
- Windows 8 / 8.1 (compatibilidad parcial)
- Windows 7 (compatibilidad limitada)

---

## Consideraciones

- Guardar todo el trabajo antes de ejecutar el script
- Algunas optimizaciones pueden afectar elementos visuales del sistema
- Los servicios deshabilitados pueden reactivarse manualmente
- Revisión del código recomendada antes de su ejecución

---

## Seguridad

Este script realiza modificaciones en la configuración del sistema operativo.  
Se recomienda su uso en entornos controlados o con conocimiento previo de las acciones ejecutadas.

---

## Autor

Joaquín Muñoz
