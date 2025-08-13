<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator.png"/>
</div>

# :material-gamepad: Bienvenido a la wiki de KNULLI

## ¡Aqui viene el Gladiador! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"¡¿No estás entretenido?!"*

Bueno, si no lo estás, eso cambia ahora: ¡**KNULLI Gladiator** ha sido publicada! La nueva versión de KNULLI viene cargada con un montón de nuevas funciones y mejoras, como:

- Soporte agregado para la Anbernic RG34XX.
- Soporte mejorado para dispositivos TrimUI (soporte para el [interruptor](play/basic-inputs), RGB, modo de suspensión, alternar la cruceta y el joystick).
- Se cambió el sistema de archivos predeterminado a exFAT.
- Modo de [reinicio rápido](configure/quick-resume) agregado para reiniciar directamente sobre tu juego.
- Conectividad Bluetooth y Wi-Fi mejorada.
- Asignación automática de [controles](configure/controls) a los jugadores.
- Cambio automático entre audio [Bluetooth](configure/bluetooth) y los altavoces integrados.
- Ajustes de [Administración de Energía](configure/power-management) ampliados en EmulationStation.
- Ajustes de [LEDs RGB](configure/rgb-leds) integrados en EmulationStation.
- Funcionalidad RGB mejorada.
- Gestión de energía y ahorro de batería mejorados.
- Velocidad de inicio de EmulationStation mejorada.
- Se reemplazó Drastic-Steward por Advanced Drastic como nuevo emulador de NDS.
- [Reproductor Multimedia](systems/media-player) agregado.
- Detección automática de juegos [ScummVM](systems/scummvm).
- Parches de 60 Hz aplicados para la RG35XX SP, RG34XX y RG CubeXX (Gracias a [@TheGammaSqueeze](https://github.com/TheGammaSqueeze)!).
- Numerosas correcciones de errores y mejoras de rendimiento.

Puedes encontrar una lista completa de todas las nuevas funciones, correcciones y cambios en el [registro de cambios](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md).

!!! warning "Actualización Mayor"

    Esta versión de KNULLI viene con muchas características nuevas que **requieren volver a flashear el firmware**.
    
    **Recomendamos fuertemente** comenzar desde cero con una instalación nueva. Sin embargo, si desea intentar migrar sus datos de usuario de una instalación anterior a la nueva, consulte la guía de [Actualizaciones Mayores](guides/major-updates).

Si eres **nuevo en KNULLI** y quieres comenzar: Consulta la [Guía de Inicio Rápido](play/quick-start) en nuestro sitio web - te guiará durante la instalación y los primeros pasos. Si ya usas KNULLI y quieres **actualizar** a Gladiator: Ten en cuenta que el problema con [PortMaster y exFAT](guides/portmaster-and-exfat) está prácticamente **resuelto**, por lo que KNULLI **ahora usa exFAT por defecto**. ¿Podría ser un buen momento para empezar con una instalación nueva?

En cualquier caso: ¡Esperamos que disfrutes jugando tus juegos con KNULLI!

## Acerca de KNULLI

KNULLI es un firmware personalizado (custom firmware o CFW en inglés) para dispositivos de juegos retro (portátiles, bartops, etc.). Se ha desarrollado como un "fork" de [Batocera](https://batocera.org). Intenta proporcionar soporte para dispositivos que se encuentran en al menos una de estas categorías:

* No existen fuentes del kernel o del u-boot disponibles.
* Existen fuentes disponibles, pero el kernel no está en linux mainline, y/o es demasiado antiguo (por ejemplo, dispositivos con un kernel BSP 3.4 como el Egret II Mini).
* No hay soporte para GPU o la GPU no es compatible, por lo que el framebuffer es la única opción.
* Es un dispositivo que tengo (en un cajón) y he decidido hacer un firmware para él.

## Características

KNULLI soporta dispostivos con GPU (soporte a través de GLES) y aquellas que sólo tienen framebuffer (legacy).

* Interfaz Emulation Station para dispositivos basados en GPU.
* Simplemenu/Simplermenu+ para dispositivos solo de framebuffer (también para los de GPU si se prefiere).
* RetroArch más múltiples núcleos libretro.
* Soporte inalámbrico y Bluetooth (incluido el audio) cuando el dispositivo lo soporta.
* Soporte para USB inalámbrico externo para aquellos sin tarjeta inalámbrica interna.
* Retroachivements.
* Juego en red.
* Soporte para scraping de carátulas/miniaturas.

## Comunidad

KNULLI utiliza las páginas de discusión de Discord, si te gustaría unirte a nosotros por favor usa este enlace: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Licencias

KNULLI es una distribución de Linux que está compuesta por muchos componentes de código abierto. Los componentes se proporcionan bajo sus respectivas licencias. Esta distribución incluye componentes licenciados solo para uso no comercial.

### Componentes Incluídos
El resto del software se proporciona bajo su propia licencia correspondiente. Estas licencias se pueden encontrar en la fuente del software o en la carpeta de licencias de este proyecto. Las modificaciones al software incluído y los scripts por parte del equipo de KNULLI están licenciadas bajo los términos del software modificado.

### Kernels y bootloaders en formato binario

Las versiones liberadas para algunos dispositivos incluyen kernels y/o bootloaders que no tienen código fuente disponible porque el fabricante no los ha publicado. En esos casos, la página específica de cada dispositivo incluye instrucciones para extraerlos del firmware de fábrica (stock).

## Créditos

Este proyecto no es el trabajo de una sola persona, sino el trabajo de muchas personas en todo el mundo que han desarrollado trocito a trocito de código abierto sin los cuales este proyecto no podría existir. Un agradecimiento especial a Batocera, muOS, JelOS, CoreELEC, LibreELEC, y a los desarrolladores y colaboradores de toda la comunidad de código abierto.
