<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator-ii.png"/>
</div>

# :material-gamepad: Bienvenido a la wiki de KNULLI

## ¡Es hora de una secuela! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"¿Es así como Roma trata a sus héroes?"*

¡Sí que lo es! KNULLI Gladiator era tan bueno que tener una secuela era inevitable. Por eso, nos enorgullece anunciar que **KNULLI Gladiator II** acaba de ser publicada.

La nueva versión es una actualización de KNULLI Gladiator, que sigue utilizando las mismas versiones de emuladores, etc. Sin embargo, esta nueva versión incluye un par de correcciones de errores y mejoras de calidad de vida. Lo más importante es que con Gladiator II, por fin introdujimos **actualizaciones OTA (Over The Air)** que te permitirán instalar futuras actualizaciones ¡directamente en el dispositivo!

Obviamente, no podemos prometer nada, pero a menos que hagamos **grandes** cambios que requieran un reinstalación, podrás instalar **todas las futuras** actualizaciones de KNULLI vía OTA. (¡Esto **no** acortará los ciclos de desarrollo! Espera actualizaciones OTA aproximadamente cada 3 o 4 meses en el canal de actualizaciones **estables**).

Encontrarás una lista completa de todas las nuevas características, correcciones y cambios en el [registro de cambios](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md). Sin embargo, aquí tienes algunos puntos destacados:

### Nuevas características de KNULLI Gladiator II

- **Soporte agregado** para Anbernic RG34XX SP, RG35XX Pro y Powkiddy V90S, V20.
- **[Actualizaciones OTA](play/update)** a través del menú de *Actualizaciones y Descargas* que facilitarán considerablemente las futuras actualizaciones.
- **SMB (SAMBA)** ahora es un [**servicio** que se puede activar o desactivar](play/add-games/network-transfer), aunque está **deshabilitado** por defecto.
- Se ha añadido un interruptor para [asignar automáticamente](configure/controls) los **controles integrados** siempre al primer jugador y se han corregido problemas con la **asignación de controles USB**.
- Se han corregido problemas con los **emuladores independientes de Dreamcast/PSP** en dispositivos **A133** (TrimUI Brick, TrimUI Smart Pro).
- Los marcos
    - se **activan automáticamente** cuando *Decoration Set* está configurado en *Auto*.
    - ahora son compatibles con emuladores **independientes** en dispositivos **H700** (Anbernic serie RG XX).
    - ahora incluyen un conjunto *Default-Knulli-SP* específico para **GBA** para ofrecer una experiencia **SP** en pantallas con formato clamshell 4:3.
- Una herramienta **Disk Check** para verificar la integridad de tu tarjeta SD. Se agregó a *Ajustes del sistema* → *Opciones de Desarrollador*.
- El [atajo](play/hotkey-shortcuts) **Soft Reset** se puede usar para forzar el reinicio de EmulationStation.
- Ahora es posible hacer un **[Reinicio de Fábrica](configure/reset-to-factory-settings)** en el dispositivo a través de EmulationStation.
- Numerosas **correcciones de errores** y **mejoras** a la estabilidad del sistema, el rendimiento y la duración de la batería.

!!! warning "Actualización Mayor"

    Esta versión de KNULLI viene con muchas características nuevas que **requieren volver a flashear el firmware**. En especial, necesitamos **incrementar el tamaño de la partición** de `BATOCERA` para futuras actualizaciones OTA.

    Si **actualizas** desde **Gladiator** a **Gladiator II**, puedes conservar tu carpeta de `system` y mantener todas tus configuraciones previas. No habrá problemas de compatibilidad entre estas dos versiones.
    
    En cualquier otro caso, **recomendamos fuertemente** comenzar desde cero con una instalación nueva. Sin embargo, si desea intentar migrar sus datos de usuario de una instalación anterior a la nueva, consulte la guía de [Actualizaciones Mayores](guides/major-updates).

Si eres **nuevo en KNULLI** y quieres comenzar: Consulta la [Guía de Inicio Rápido](play/quick-start) en nuestro sitio web - te guiará durante la instalación y los primeros pasos.

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
