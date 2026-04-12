# :material-progress-check: Instalar KNULLI

KNULLI se instala descargando una imagen para tu dispositivo, grabándola en una tarjeta SD (o en el almacenamiento interno) y luego encendiéndolo para iniciar el proceso de instalación.

## Paso 1: Descargar [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Descarga la versión más reciente de KNULLI para tu dispositivo desde la [Página de Versiones](https://github.com/knulli-cfw/distribution/releases/latest).
    * Encontrarás enlaces de descarga para cada dispositivo/plataforma compatible en la sección `Installation Package Downloads`.
    * Asegúrate de descargar la imagen correcta para tu dispositivo. Por ejemplo, si estás instalando KNULLI en una [RG35XX](../devices/anbernic/rg35xx.md), deberías descargar la imagen `rg35xx`.
    * Si tienes alguna pregunta, puedes consultar la sección de [Dispositivos](../devices/index.md) para confirmar qué imagen deberías descargar para tu dispositivo.

!!! warning "Dispositivos no soportados."

    Si tu dispositivo *no* aparece en la lista de `Installation Package Downloads`, aún no hay una versión pública de Knulli para tu dispositivo. *No* deberías intentar usar un paquete para otro dispositivo.

## Paso 2: Grabar

* Primero descomprime la imagen.
* Luego, grábala en una tarjeta SD con una herramienta de imágenes.
    * Algunas herramientas comunes para grabar imágenes son [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/) y [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/). Si tienes experiencia con la línea de comandos, también puedes usar `dd`.

Mientras se graba la imagen, se crearán varias particiones, que se mostrarán como unidades diferentes en tu computadora. La mayoría de estas unidades solo se puede acceder desde Linux. No son accesibles desde Windows.

!!! danger "No formatees las particiones de KNULLI."

    Nunca debes formatear las particiones de KNULLI que Windows no pueda leer, por mucho que Windows lo sugiera.

Después de grabar, la unidad *BATOCERA* será la única formateada en FAT32 para que Windows pueda acceder a ella para actualizaciones manuales, como se describe en la sección [Actualizar](./update.md). Sin embargo, esta es solo la ubicación donde se almacena el sistema operativo, por lo que no es un lugar para guardar tus juegos. Para más información sobre cómo agregar juegos, consulta la sección [Añadir Juegos](./add-games/index.md) *después del primer arranque*.

!!! warning "Expansión de la partición SHARE."

    Mientras se graba la imagen, se creará una partición llamada *SHARE*. Aquí es donde todos tus juegos y demás datos se almacenarán. Sin embargo, la partición *SHARE* solo se expandirá a su tamaño completo durante el primer arranque. Es *obligatorio* finalizar la instalación iniciando KNULLI *antes* de poder acceder a la partición *SHARE* y comenzar a agregar tus juegos. Consulta la sección [Añadir Juegos](./add-games/index.md) para saber cómo agregar juegos a tu dispositivo KNULLI *después del primer arranque*.

## Paso 3: Iniciar tu dispositivo

* Inserta la tarjeta SD en tu dispositivo mientras está apagado.
    * Si tu dispositivo tiene una segunda ranura para tarjetas SD, asegúrate de que esté vacía durante el primer arranque.
* Enciende tu dispositivo.
    * Nota: Algunos dispositivos pueden requerir que configures el orden de arranque para que la tarjeta SD se cargue primero. Consulta la documentación de tu dispositivo para ver si esto aplica.
* KNULLI se instalará automáticamente. Espera un poco, ¡algunos pasos tardan unos minutos en completarse!
* Una vez finalizada la instalación, KNULLI arrancará en EmulationStation, la interfaz gráfica de usuario de KNULLI. ¡Listo!

## Siguientes pasos

* [Redes](../configure/networking.md)
* [Controles](../configure/controls.md)
* [Añadir Juegos](./add-games/index.md)
* [Scraping](./scraping.md)
* [Temas](../configure/customization/themes.md)
