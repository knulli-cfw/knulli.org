# :material-gamepad: Acerca de KNULLI

Hola! Bienvenido a KNULLI!

KNULLI es un firmware personalizado (custom firmware o CFW en inglés) para dispositivos de juegos retro. Se ha desarrollado como un "fork" de el muy conocido [Batocera](https://batocera.org/) adaptado a dispositivos portátiles que son incompatibles con la línea principal del kernel de Linux o que necesitan otro tipo de atención especial específica del dispositivo.

Si eres nuevo en los juegos retro: ¡No te preocupes! La configuración inicial puede parecer un poco intimidante al principio, pero entenderás la esencia rápidamente. ¡Nuestra wiki te guiará paso a paso! Sólo consulta la [Guía de Inicio Rápido](../play/quick-start) y síguela paso a paso. ¡Tu instalación de KNULLI estará lista y funcionando muy pronto!

Sin embargo, si ya tienes experiencia con otros firmwares personalizados, nos gustaría darte una breve introducción, ya que KNULLI podría funcionar de forma ligeramente diferente a otros firmwares personalizados. Así que, si quieres asegurarte de que KNULLI es la opción ideal para ti, consulta las siguientes secciones:

* ["¡TIENES que probar KNULLI!"](#tienes-que-probar-knulli)
* [Funcionalidades incluidas](#funcionalidades-incluidas)
* [Configura tus emuladores a través de EmulationStation](#configura-tus-emuladores-a-traves-de-emulationstation)
* [Estructura de carpetas estricta](#estructura-de-carpetas-estricta)

## "¡TIENES que probar KNULLI!"

Nuestro amigo [TechDweeb](https://www.youtube.com/@TechDweeb) hizo una guía muy completa para ayudarte a empezar a usar KNULLI. (¡Gracias, TechDweeb!) Si quieres conocer KNULLI, descubrir sus funciones y verlo en acción, este video podría ser justo lo que buscas.

<iframe width="560" height="315" src="https://www.youtube.com/embed/GJQnhkNd9kU?si=bSP_jlUffjkhP4H1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Funcionalidades incluidas

KNULLI incluye numerosas funciones integradas:

* KNULLI incluye una gran cantidad de emuladores y ports (incluyendo PortMaster) y es compatible de manera nativa con [Pico-8](../systems/pico-8).
* Puedes extraer ([Scraping](../play/scraping)) metadatos y contenido multimedia (capturas de pantalla, portadas, vídeos, descripciones, etc.) directamente desde ScreenScraper, TheGamesDB y ArcadeDB.
* Puedes conseguir y revisar tus [Logros](../play/retro-achievements).
* Puedes conectar mandos y auriculares [Bluetooth](../configure/bluetooth) si tu consola portátil es compatible con Bluetooth.
* KNULLI permite usar la salida HDMI de tu dispositivo (si la tiene) para jugar a tus juegos en una pantalla grande.
* KNULLI permite hacer [Transferencia de Red](../play/add-games/network-transfer) para añadir archivos de forma inalámbrica, haciendo que tus datos de usuario estén disponibles a través de SMB (el protocolo de intercambio de archivos integrado de Windows).
* KNULLI incluye un conjunto de [Marcos](../configure/customization/bezel-decorations) predeterminados que puedes activar fácilmente.
* Puedes cambiar entre una gran variedad de [Temas](../configure/customization/themes).
* Puedes organizar tus juegos en [Colecciones](../configure/collections) dinámicas que los agrupan automáticamente por palabras clave o atributos.
* ¡También puedes crear [Colecciones](../configure/collections) personalizadas de tus juegos seleccionados!
* KNULLI incluye sincronización para sincronizar tus partidas guardadas y estados entre diferentes dispositivos KNULLI/Batocera.
* Si tu dispositivo incluye [LEDs RGB](../configure/rgb-leds), KNULLI te permite configurarlos e incluso usarlos como indicadores de batería.
* Los usuarios expertos pueden acceder a KNULLI a través de [SSH](../configure/SSH).
* KNULLI permite entrar en modo de espera o apagarse automáticamente al [Cerrar la Tapa](../configure/power-management) de un dispositivo con tapa.

## Configura tus emuladores a traves de EmulationStation

La interfaz de KNULLI se llama EmulationStation. Es una interfaz gráfica de usuario muy completa que incluye una gran variedad de temas. Una de las características principales de KNULLI es que podrás configurar tus emuladores directamente en EmulationStation, ya sea **por sistema** o **por juego**.

Otros firmwares personalizados requieren que configures los emuladores a través de la interfaz gráfica de usuario de cada emulador (que suele ser **RetroArch**). Sin embargo, KNULLI te recomienda **no depender en absoluto** de la GUI de RetroArch. KNULLI **generará** la configuración del emulador para cada juego de manera individual al iniciarlo, basándose en los ajustes que configures en EmulationStation.

Los usuarios expertos podrán seguir accediendo a la interfaz gráfica de RetroArch mientras ejecutan un juego. Los [**Filtros**](../configure/retroarch/shaders) y Remapeo de [**Controles**](../configure/retroarch/controls) se pueden usar **por juego** o **por sistema** para realizar ajustes manuales directamente en la interfaz gráfica de RetroArch. Sin embargo, una de las funciones principales de KNULLI es la integración de la configuración de emulación en EmulationStation, lo que elimina la necesidad de modificar las configuraciones desde las interfaces gráficas de cada emulador.

## Estructura de carpetas estricta

KNULLI incluye muchas funciones integradas que no encontrarás en muchos otros firmwares personalizados. Sin embargo, para que funcionen, KNULLI se basa en una **estructura de carpetas estricta**. Los juegos, archivos de BIOS, partidas guardadas, temas, etc., deben estar exactamente donde KNULLI los necesita. Si quieres migrar tu biblioteca actual a KNULLI, debes adaptarla a la estructura de carpetas de KNULLI - no hay otra opción. Ten en cuenta que KNULLI **distingue entre mayúsculas y minúsculas**.