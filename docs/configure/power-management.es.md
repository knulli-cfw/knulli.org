# :material-battery-medium: Administración de Energía

Desde KNULLI Firefly, el CFW incluye un menú de *Power Management*, donde puedes ajustar la configuración para ahorrar batería.

## Configuración de la administración de energía

Encontrarás la configuración de *Power Management* en el menú de *Device Settings*.

* Presiona ++"START"++ para abrir el menú principal.
* Ve a *Device Settings*.
* Ve a *Power Management*.

### Battery Saving

Esta sección contiene varias opciones de ahorro de energía para mejorar la duración de la batería.

!!! info "Apagado en modo de suspensión."

    Muchos usuarios prefieren configurar su dispositivo para que primero entre en modo de **suspensión** y se **apague** completamente después de un tiempo. Esto se logra configurando el **Modo** en **Suspend** y el **Extended Mode** en **Shutdown**.

!!! warning "Modos de suspensión ineficientes."

    Dependiendo del dispositivo que estés usando, el **modo de suspensión** puede agotar la batería **sorprendentemente rápido**. Este **no** es un problema de KNULLI ni se puede solucionar con software. ¡No recomendamos dejar el dispositivo en modo de suspensión durante periodos prolongados!

* **Modo** permite configurar la primera etapa del modo de ahorro de batería. El dispositivo pasará automáticamente a este modo tras un tiempo de inactividad determinado.
    * *Dim* atenua la pantalla y silencia el audio.
    * *Display Off* apaga la pantalla y silencia el audio.
    * *Suspend* pone el dispositivo en modo de suspensión.
    * *Shutdown* apaga el dispositivo (lo que impide acceder al **Extended Mode**).
    * *None* desactiva la primera etapa del modo de ahorro de batería.
* **Idle Time** establece el tiempo que debe transcurrir antes de que el dispositivo entre en el **Modo** de ahorro de batería.
* **Extended Mode** permite configurar la segunda etapa del modo de ahorro de batería. El dispositivo pasará automáticamente a este modo tras un tiempo de inactividad prolongado (**Extended Idle Time**). Ten en cuenta que no se puede acceder al modo extendido si el dispositivo ya se ha suspendido o apagado con el primer **Modo**.
* **Extended Idle Time** establece el tiempo que debe transcurrir antes de que el dispositivo entre en **Extended Mode**. Este temporizador solo se inicia después de que el dispositivo haya entrado en la primera etapa del **Modo** de ahorro de batería.
* **Disable Battery Saving When Charging** desactiva las funciones de ahorro de batería (como el apagado automático en reposo) mientras el dispositivo está conectado a la corriente.
* **Aggressive Battery Saver** optimiza aún más la duración de la batería aplicando medidas adicionales de ahorro de energía mientras el sistema está inactivo.
* **Mute Audio When Idle** silencia todo el audio al activarse el primer modo de reposo.
* **Lid Close Mode** es un modo de ahorro de batería opcional disponible solo en dispositivos con detección de cierre de tapa (por ejemplo, el RG35XX SP). Al cerrar la tapa, se aplicará el modo correspondiente.
    * *Display Off* apaga la pantalla por completo y silencia la salida de audio. (¡Las pulsaciones de teclas seguirán activando el dispositivo!).
    * *Suspend* pone el dispositivo en modo de suspensión (lo que inhabilita el **Modo** y el **Extended Mode**).
    * *Shutdown* apaga el dispositivo (lo que inhabilita el **Modo** y el **Extended Mode**).

!!! info "KNULLI guarda tu progreso al apagar el dispositivo (si el emulador admite guardado automático)."

    Los núcleos de RetroArch admiten guardado automático al salir del emulador. Puedes activar esta opción en el menú de *Ajustes de Juegos*. Si apagas el dispositivo manteniendo pulsado el botón de encendido o cerrando la tapa mientras juegas a un juego con un núcleo de RetroArch y el guardado automático está activado, KNULLI cerrará el emulador correctamente y permitirá que se realice el guardado automático antes de apagar el dispositivo.