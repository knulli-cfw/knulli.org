<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-booting-up.png"/>
</div>

# Bienvenido a la wiki de KNULLI :material-gamepad:

KNULLI es un firmware personalizado (custom firmware or CFW en inglés) para dispositivos de juegos retro (portátiles, bartops, etc.). Se ha desarrollado como un "fork" de [Batocera](https://batocera.org). Intenta proporcionar soporte para dispositivos que se encuentran en al menos una de estas categorías:

* No existen fuentes del kernel or del u-boot disponibles
* Existen fuentes disponibles, pero el kernel no está en linux mainline, y/o es demasiado antiguo (por ejemplo, dispositivos con un kernel BSP 3.4 como el Egret II Mini)
* No hay soporte para GPU o la GPU no es compatible, por lo que el framebuffer es la única opción
* Es un dispositivo que tengo (en un cajón) y he decidido hacerle un firmware para él

## Características

KNULLI soporta dispostivos con GPU (soporte a través de GLES) y aquellas que sólo tienen framebuffer (legacy).

* Interfaz Emulation Station para dispositivos basados en GPU
* Simplemenu/Simplermenu+ para dispositivos solo de framebuffer (también para los de GPU si se prefiere)
* RetroArch más múltiples núcleos libretro
* Soporte inalámbrico y Bluetooth (incluido el audio) cuando el dispositivo lo soporta
* Soporte para USB inalámbrico externo para aquellos sin tarjeta inalámbrica interna
* Retroachivements
* Juego en red (Netplay)
* Soporte para raspador de carátulas/miniaturas

## Comunidad

KNULLI utiliza las páginas de discusión de Discord y [:simple-github: GitHub](https://github.com/knulli-cfw/distribution/discussions), si te gustaría unirte a nosotros por favor usa este enlace: [:simple-discord: Discord](https://discord.gg/QZKr2QFA)

## Licencias

KNULLI es una distribución de Linux que está compuesta por muchos componentes de código abierto. Los componentes se proporcionan bajo sus respectivas licencias. Esta distribución incluye componentes licenciados solo para uso no comercial.

### Bundled Works
All other software is provided under each component's respective license.  These licenses can be found in the software sources or in this project's licenses folder.  Modifications to bundled software and scripts by the KNULLI team are licensed under the terms of the software being modified.

### Kernels y bootloaders en formato binario

Las versiones liberadas para algunos dispositivos incluyen kernels y/o bootloaders que no tienen código fuente disponible porque el fabricante no los ha publicado. En esos casos, la página específica de cada dispositivo incluye instrucciones para extraerlos del firmware de fábrica (stock).

## Créditos

Este proyecto no es el trabajo de una sola persona, sino el trabajo de muchas personas en todo el mundo que han desarrollado trocito a trocito de código abierto sin los cuales este proyecto no podría existir. Un agradecimiento especial a Batocera, muOS, JelOS, CoreELEC, LibreELEC, y a los desarrolladores y colaboradores de toda la comunidad de código abierto.
