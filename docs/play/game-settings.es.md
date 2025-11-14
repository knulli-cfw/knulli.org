# :material-fast-forward: Configuración de los Juegos

!!! info "¡Atención por favor, sabelotodo de RetroArch!"

    Si ya has usado **otros firmwares personalizados portátiles**, puedes pensar que esta sección no te resultará útil, ya que ya sabes cómo configurar **RetroArch** a tu gusto. Pues bien, esta sección es **especialmente para ti**.

    Al iniciar un juego en KNULLI, **se borran todos** los archivos de configuración específicos del emulador y se generan nuevos archivos basados ​​en la configuración que realizaste en **EmulationStation**. Por lo tanto, la configuración que realices en la interfaz gráfica del emulador durante la ejecución **no será persistente**; se perderá al reiniciar el juego.

    Sí, sí, no te preocupes: los **usuarios avanzados de RetroArch** podrán configurar sus juegos directamente en RetroArch. Sin embargo, para ello, deberás usar archivos de [**sobreescritura**](../../configure/retroarch/shaders) y [**remapeo**](../../configure/retroarch/controls), o probar suerte editando manualmente el archivo `batocera.conf`. Ten en cuenta que ciertas funciones de KNULLI (por ejemplo, usar un bisel multiresolución configurado para tener una decoración en la pantalla integrada **y** otra para jugar a través de la salida HDMI sin tener que cambiar manualmente la decoración) **no son compatibles** con las sobreescrituras.

    Configurar con KNULLI sin duda tiene ventajas. Esta sección te enseñará a configurar juegos con KNULLI.

Después de instalar KNULLI y añadir tus juegos, KNULLI debería ofrecerte una experiencia bastante buena desde el primer momento. Aun así, quizás te interese explorar opciones para personalizar tu experiencia de juego. Esto podría depender de tus preferencias personales (como probar el escalado, deshabilitar o personalizar los marcos, aplicar filtros, etc.) o incluso de probar emuladores completamente diferentes. Algunos sistemas, como el N64, son muy difíciles de emular, por lo que algunos emuladores pueden funcionar mejor con un juego mientras que otros lo hacen con otro. En esta sección, aprenderás a configurar juegos con KNULLI.

!!! info "Esta sección no trata sobre scraping."

    Esta sección **no** trata de agregar metadatos ni carátulas (si buscas eso, echa un vistazo a la sección [Scraping](../scraping)).

## La filosofía de KNULLI

Una de las filosofías fundamentales de KNULLI es crear una experiencia de usuario cómoda, especialmente para quienes se inician en el mundo de los videojuegos retro. En resumen, no vemos la necesidad de saturar a los usuarios con tantos emuladores, sus interfaces gráficas de usuario (GUI, **G**raphical **U**ser **I**nterface en inglés), archivos de configuración y ajustes. En su lugar, KNULLI incluye una interfaz gráfica de usuario que permite configurar las opciones más populares para la mayoría de los emuladores directamente en EmulationStation, la interfaz gráfica de usuario de KNULLI.

Queremos ofrecer una experiencia de usuario comparable a la de los sistemas operativos de consola modernos, donde todos los juegos se gestionan por igual y todas las configuraciones se realizan a través de la misma GUI. Para los usuarios con experiencia en otros firmwares personalizados, esto suele suponer un reto, ya que no pueden simplemente recrear sus configuraciones favoritas de RetroArch; necesitan aprender algo nuevo.

Para los nuevos usuarios, el método de KNULLI debería ser bastante intuitivo. Esta sección está pensada para que aprendas ambos y te sirva de ventaja.

## Jerarquía de las configuraciones

En KNULLI, muchas configuraciones relacionadas con el juego se pueden configurar como ***"auto"***. *"auto"* **siempre** significa **heredar** una configuración de una capa de configuración **superior** a la que se está visualizando. Las capas posibles son:

- **Predeterminada de KNULLI**: configuraciones que consideramos las mejores opciones para la mayoría de los usuarios.
- **Configuración Global**: configuraciones que aplican **globalmente**. Para editar la configuración global, presiona ++"Start"++ para abrir el menú principal y luego ve a *Ajustes de Juegos*.
- **Configuración por Sistema**: configuración para un **sistema emulado**, por ejemplo, para todos los juegos de N64, PSP, etc. Para editar la configuración del sistema, tienes dos opciones:
    - Presiona ++"Start"++ para abrir el menú principal, luego ve a *Ajustes de Juegos*, luego a *Configuración Avanzada por Sistema* y selecciona el sistema que deseas configurar.
    - Ve a la lista de juegos del sistema correspondiente, presiona ++"Select"++ y luego ve a *Opciones Avanzadas del Sistema*.
- **Configuración por Juego**: configuración para **un solo juego**, por ejemplo, "Super Mario World". Para editar la configuración por juego, navega hasta el juego correspondiente y **mantén presionado** el botón que lo inicia (:material-gamepad-circle-right: o :material-gamepad-circle-down:, según tu configuración), luego ve a *Opciones Avanzadas del Juego*.

Verás que, por defecto, la mayoría de estas configuraciones están configuradas en *auto* en cada capa, por lo que se aplican los valores predeterminados de KNULLI. Si quieres cambiar una configuración, primero piensa para que alcance quieres realizar el cambio y luego hazlo **en el nivel más bajo posible**.

Por ejemplo, si quieres activar el *Toggle Fast Forward* (avance rápido) solo para "Super Mario World", configúralo en la **Configuración por Juego**. Si quieres aplicarlo a todos los juegos de SNES, configúralo en la **Configuración por Sistema**. Si quieres aplicarlo a todos los juegos, configúralo en la **Configuración Global**.

!!! danger "No todos los emuladores admiten todas las configuraciones."

    Algunas configuraciones, que se pueden configurar globalmente para mayor comodidad, no son compatibles con todos los emuladores. Por lo tanto, cambiar una configuración en una capa superior no siempre garantiza que el emulador o el dispositivo que se esté usando sean compatibles con la función.

    Por ejemplo, configurar algunas opciones de escalado global no tendrá ningún efecto en algunos emuladores de N64 que siempre se muestran en pantalla completa, no importa que configuraciones hagas. Esto no significa que hayas hecho algo mal; simplemente significa que la configuración no es aplicable para el uso que estás considerando.

## Cambiar de emulador

KNULLI incluye una gran variedad de emuladores. Muchos sistemas incluso ofrecen una variedad de emuladores para elegir. Para cada sistema, hemos seleccionado uno predeterminado que consideramos más adecuado para la mayoría de los juegos o para las capacidades de las consolas portátiles de bajo consumo. Sin embargo, como se explicó anteriormente, probar diferentes emuladores puede ser una buena idea cuando un juego no funciona como se espera.

Ten en cuenta que los emuladores solo se pueden cambiar **por sistema** y **por juego**, obviamente. No puedes elegir un emulador global, ya que no existe un único emulador capaz de cubrir todos los sistemas compatibles con KNULLI.

Para cambiar de emulador para un sistema o juego, ve a la configuración **por sistema** o **por juego** y busca *Emulador*. Aquí puedes elegir tu favorito entre todos los emuladores disponibles para el sistema correspondiente.

Ten en cuenta que, a veces, al cambiar de emulador, la configuración del emulador también cambia, ya que algunos emuladores tienen opciones diferentes a otros. Explora la configuración y pruébala.

!!! info "Núcleos de Libretro y emuladores independientes."

    Al hablar de emuladores, distinguimos entre **núcleos de Libretro** (también conocidos como **núcleos de RetroArch**) y **emuladores independientes**. Esto se debe a la gran popularidad y la excelente integración de **RetroArch/Libretro** en el sistema operativo KNULLI. Un emulador **independiente** no está incluido en Libretro y, por lo tanto, no incluye las funciones de RetroArch.

    Por ejemplo, muchos emuladores independientes **no** admiten el guardado/carga automáticos. Tampoco ofrecen capturas de pantalla de las partidas guardadas. Algunos ni siquiera integran sus partidas guardadas en EmulationStation.

    Por ejemplo, si juegas a N64 con *Mupen64plus: Rice*, podrás guardar y cargar el estado de tu partida con ++"Function"++ + :material-gamepad-circle-left:/:material-gamepad-circle-up:. Sin embargo, tus partidas guardadas **no** aparecerán en EmulationStation y no podrás acceder al juego directamente desde el estado guardado.

    No obstante, los emuladores independientes siguen siendo completamente funcionales. Simplemente tienes que acostumbrarte a un comportamiento ligeramente diferente y a una integración un poco menos cómoda en EmulationStation.
