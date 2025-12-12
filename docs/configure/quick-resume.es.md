# :material-replay: Reanudación Rápida

!!! info "Los modos de suspensión en dispositivos portátiles de bajo consumo suelen ser ineficientes."

    La mayoría de los dispositivos con KNULLI son portátiles de bajo consumo con modos de suspensión muy ineficientes. A diferencia de los smartphones y ordenadores modernos, los dispositivos portátiles compatibles con KNULLI suelen consumir **mucha** batería solo para mantener la memoria activa. Recomendamos fuertemente **no** usar el modo de suspensión durante largos periodos. En su lugar, **apaga el dispositivo de manera correcta**. El modo de reinicio rápido (**Quick Resume Mode**) te permitirá volver al juego la próxima vez que lo enciendas.

Si apagas el dispositivo correctamente mientras juegas (por ejemplo, manteniendo pulsado el botón de encendido durante dos segundos), KNULLI guardará automáticamente tu progreso (si el emulador actual admite el guardado automático). Además, KNULLI memoriza el último juego que jugaste y lo inicia automáticamente al volver a encender el dispositivo. Si la función de guardado/carga automática está activada, KNULLI incluso cargará la ranura de guardado automático para que puedas retomar el juego justo donde lo dejaste, incluso después de apagar el dispositivo por completo.

Para activar el modo de reanudación rápida,

* Presiona ++"Start"++ para abrir el menú principal.
* Ve a *Ajustes de Juegos*.
* Activa *Auto Guardar/Cargar*.
* Activa *Quick Resume Mode*.

!!! warning "No todos los emuladores/sistemas soportan guardar/cargar automáticamente."

    Ten en cuenta que los juegos independientes (por ejemplo, ports) y varios emuladores no tienen la función de guardado automático. Estos juegos **se seguirán recargando** tras el arranque cuando el *Quick Resume Mode* esté activado. Sin embargo, ¡tendrás que encargarte tú mismo de guardar y cargar!. Los logros Retro en modo Hardcore también impedirán la reanudación rápida.

### Solución de problemas


En el improbable caso de que tu dispositivo no pueda cargar el juego o se quede atascado en un bucle de reinicio, puedes desactivar manualmente el *Quick Resume Mode* modificando el archivo de configuración principal de KNULLI. Este archivo se encuentra en la siguiente ubicación: `system/batocera.conf`.

Debes eliminar las líneas correspondientes a estos 3 valores, que aparecen casi al final del archivo de configuración:

* `global.quickresume`
* `bootgame.cmd`
* `bootgame.path`

Una vez eliminadas las 3 líneas problemáticas, guarda el archivo de configuración, vuelve a cargar la tarjeta micro SD en tu dispositivo y enciéndelo. Una vez que el *Quick Resume Mode* ha sido desactivado manualmente, tu dispositivo arrancará directamente en EmulationStation.

!!! info "Debes reactivar manualmente el *Quick Resume Mode* para volver a usar esta función."

    Debes acceder manualmente al menú de configuración y reactivar el *Quick Resume Mode* para volver a usar esta función después de seguir los pasos anteriores para desactivarla. También se recomienda asegurarte de que la opción *Auto Guardar/Cargar* esté activada si deseas reactivarla.
