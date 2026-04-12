# :material-controller: Controles

!!! danger "¡No confundas la configuración del hardware con la asignación de botones para juegos/sistemas!"

    ¡No confundas la configuración del control con la reasignación de botones específicos del **juego** o del **núcleo**! Esta sección trata sobre la configuración **global** del mando para que el **hardware** funcione. Si quieres reasignar los controles para un **juego** o **emulador** específico, sigue la guía del emulador correspondiente (por ejemplo, [Retroarch](./retroarch/controls.md)).

Aunque fue diseñado para dispositivos portátiles, KNULLI es compatible con varios tipos de controles USB y Bluetooth. Además, Knulli también es compatible con otros dispositivos de entrada, como ratones y teclados.

Si un control no funciona con tu dispositivo KNULLI de fábrica, podría ser necesario asignar sus botones y controles direccionales a las entradas del juego correspondientes, como se explica en las secciones siguientes.

## Los controles integrados

La mayoría de los dispositivos compatibles con KNULLI son portátiles con controles integrados. Suelen constar de un **pad direccional** (:material-gamepad:, abreviado: **D-pad**), los **botones frontales** (:material-gamepad-circle:), algunos **botones superiores** (++"L1"++, ++"R1"++) y/o **gatillos superiores** (++"L2"++, ++"R2"++) y botones para ++"Start"++ y ++"Select"++. Además, es probable que tu dispositivo cuente con un **interruptor de encendido** y un **botón de función** (++"Function"++) que se usa para atajos. **Opcionalmente**, tu dispositivo también podría tener **joysticks analógicos** y un **botón de reinicio**. Si no sabes dónde se encuentran estos botones en tu dispositivo, consulta su manual.

KNULLI incluye un conjunto de a**tajos** predefinidos que te permiten guardar, cargar y salir de tus juegos, tomar capturas de pantalla, etc. Te recomendamos mucho que te **aprendas** los atajos de teclado. Encontrarás una lista de todos los atajos predeterminados en la sección [Atajos](../play/hotkey-shortcuts.md).

!!! info "Nombres de los controles."

    Dependiendo de tu dispositivo, los controles integrados tienen un nombre distinto. Por ejemplo, en la Anbernic RG40XX H, los controles integrados se llaman `Anbernic RG40XX-H Controller`.

## Assignación de controles

Después de conectar un control, este se **asignará automáticamente** al **siguiente jugador**: el primer control que conectes se asignará automáticamente al jugador 1. Si conectas un segundo control, se asignará automáticamente al jugador 2, y así sucesivamente. Si un control se desconecta (por ejemplo, porque se apaga, se desconecta o se queda sin batería), todos los demás controles se asignan automáticamente a un "nivel superior": si el control del jugador 1 se desconecta, el control del jugador 2 se reasignará al jugador 1, y así sucesivamente.

### Usar los controles integrados del dispositivo para el jugador 1

Si quieres usar siempre los controles integrados como control para el jugador 1, incluso si hay otros controles conectados,

* Presiona ++"Start"++ para abrir el menú principal.
* Ve a *Configuración de Controles y Bluetooth*.
* Asegúrate de que la opción *Usar controles de la portátil para el jugador 1* esté *activada*.

!!! danger "No se pueden reasignar los controles durante el juego."

    **Ten en cuenta** que la asignación de controles **no funciona durante el juego** (excepto en algunos ports, como *TMNT: Shredder's Revenge*). Por lo tanto, debes **conectar** tus controles **antes** de iniciar un juego y salir del mismo antes de que puedas desconectar un control.

## Mapeo de controles

!!! danger "No intentes reasignar los controles integrados."

    Cada versión de KNULLI está **optimizada** para el dispositivo específico para el que fue diseñada. En concreto, todos los controles integrados **ya están asignados**. **No** intentes reasignar los controles integrados en el menú de *Ajustes de Mando y Bluetooth*. Al hacerlo, podrías **dañar** los controles virtuales ocultos (por ejemplo, la **asignación del D-pad al joystick virtual** para dispositivos sin joysticks analógicos, que normalmente se puede alternar con ++"Function"+++++"Select"++). Si quieres reasignar los controles para ciertos *juegos* o *sistemas*, hazlo en la configuración del juego o emulador correspondiente. ¡El menú de *Ajustes de Mando y Bluetooth* **no** es el lugar adecuado para asignar controles específicos de un juego o sistema!

Para asignar los botones y las flechas de dirección de un control, presiona el botón ++"Start"++ para abrir el menú principal, busca *Ajustes de Mando y Bluetooth* y selecciona *Mapeo de Controles*. Las instrucciones en pantalla te pedirán que mantengas presionado un botón del control que quieres asignar. Una vez detectado el control, se te guiará por el proceso: simplemente presiona el botón del control que mejor se adapte al botón o función que se muestra en pantalla.

Si presionas un botón incorrecto, no te preocupes: siempre podrás volver a este menú y reasignar el control nuevamente.

!!! danger "¡Los botones frontales están indicados por dirección!"

    KNULLI es compatible con varios controles de distintas marcas. Dependiendo de tu control, las etiquetas de los botones frontales pueden variar. Por lo tanto, KNULLI nombra los botones frontales no por su etiqueta, sino por su dirección.

    Por ejemplo, de los cuatro botones frontales, el botón **norte** (:material-gamepad-circle-up:) está marcado como ++"X"++ en los controles estándar de SNES. El mismo botón está marcado como ++"Y"++ en los controles de Xbox y como ++"△"++ en los de PlayStation.

    ¡Asegúrate de **no** confundir los **botones frontales** (:material-gamepad-circle-up: :material-gamepad-circle-right: :material-gamepad-circle-down: :material-gamepad-circle-left:) con las direcciones del **D-pad** (:material-gamepad-up: :material-gamepad-right: :material-gamepad-down: :material-gamepad-left:)! Encontrarás más información sobre los botones frontales en la sección de [Atajos](../play/hotkey-shortcuts.md).