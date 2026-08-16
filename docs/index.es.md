<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-scarab.png"/>
</div>

# :material-gamepad: Bienvenido a la wiki de KNULLI

## ¡Ha llegado un nuevo lanzamiento! [![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/knulli-linux/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/knulli-linux/releases/latest)

*"Solo uno puede entrar aquí, aquel cuyo valor reside en su interior".*

Por fin todas las piezas han sido puestas juntas para el lanzamiento de **KNULLI Scarab**. Nosotros, el equipo de KNULLI, ¡estamos felices y orgullosos de invitarte a esta cueva de maravillas!

KNULLI Scarab es una **actualización mayor** que trae consigo muchísimas funciones nuevas y mejoras en la experiencia de juego. Entre ellas, destacan:


- KNULLI ahora es totalmente compatible con los dispositivos H700 más recientes ​​de la serie RG XX de Anbernic.
- Se ha añadido soporte para BattleXP G350, GKD Pixel 2, Miyoo Flip, Powkiddy X55, Retroid Pocket 5, Flip 2 y muchos otros dispositivos.
- **RetroArch** se ha actualizado a la versión **1.22.2**.
- Se ha añadido **Yabasanshiro Standalone** para un mejor rendimiento en la emulación de SEGA Saturn.
- **[Sincronización](./configure/syncthing.md)** mejorada que permite activar las sincronizaciones manualmente o incluso automáticamente al salir del juego, mientras que las notificaciones te mantienen al tanto del progreso de la transferencia.
- Nuestra nueva función **[BatteryPlus](./configure/batteryplus.md)** te proporciona información más precisa sobre el estado actual de la batería.
- Funcionalidad de [LEDs RGB](./configure/rgb-leds.md) nueva y mejorada mediante **Silky RGB** (¡gracias, [doughn0](https://github.com/doughn0/SilkyRGB)!).
- [**PortMaster**](./systems/portmaster.md/#installing-portmaster) ahora se puede instalar directamente desde el menú *Device Settings*.
- Numerosas **correcciones de errores** y **mejoras** en la estabilidad del sistema, el rendimiento y la duración de la batería.

Encontrarás una lista completa de todas las nuevas funciones, correcciones y cambios en el [registro de cambios](https://github.com/knulli-cfw/knulli-linux/blob/knulli-main/knulli-Changelog.md).

!!! warning "Actualización Mayor."

    Esta versión de KNULLI viene con muchas características nuevas que **requieren volver a flashear el firmware**. En especial, es necesario **modificar la tabla de particiones** de la tarjeta SD.

    Además, muchos archivos y rutas entre **Gladiator II** y **Scarab** se han renombrado, por lo que incluso los archivos de configuración de la carpeta `system` volverán a ser incompatibles.
    
    En cualquier otro caso, **recomendamos fuertemente** comenzar desde cero con una instalación nueva. Sin embargo, si deseas intentar migrar tus datos de usuario de una instalación anterior a la nueva, consulta la guía de [Actualizaciones Mayores](./guides/major-updates.md).

Si eres **nuevo en KNULLI** y quieres comenzar: Consulta la [Guía de Inicio Rápido](./play/quick-start.md) en nuestro sitio web, te guiará durante la instalación y los primeros pasos.

En cualquier caso: ¡Esperamos que disfrutes jugando tus juegos con KNULLI!

## Acerca de KNULLI

KNULLI es un firmware personalizado (custom firmware o CFW en inglés) para dispositivos de juegos retro (portátiles, bartops, etc.). Se ha desarrollado como un "fork" de [Batocera](https://batocera.org). Intenta proporcionar soporte para dispositivos que se encuentran en al menos una de estas categorías:

* No existen fuentes del kernel o del u-boot disponibles.
* Existen fuentes disponibles, pero el kernel no está en linux mainline, y/o es demasiado antiguo (por ejemplo, dispositivos con un kernel BSP 3.4 como el Egret II Mini).
* No hay soporte para GPU o la GPU no es compatible, por lo que el framebuffer es la única opción.
* Es un dispositivo que tengo (en un cajón) y he decidido hacer un firmware para él.

## Características

KNULLI soporta dispostivos con GPU (soporte a través de GLES) y aquellas que sólo tienen framebuffer (legado).

* Interfaz Emulation Station para dispositivos basados en GPU.
* Simplemenu/Simplermenu+ para dispositivos solo de framebuffer (también para los de GPU si se prefiere).
* RetroArch más múltiples núcleos libretro.
* Soporte inalámbrico y Bluetooth (incluido el audio) cuando el dispositivo lo soporta.
* Soporte para USB inalámbrico externo para aquellos sin tarjeta inalámbrica interna.
* RetroAchivements.
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
