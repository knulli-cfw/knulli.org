# :material-folder-home: Almacenamiento de los Juegos

Antes de empezar a añadir tus juegos, tómate un tiempo para comprender cómo se estructura el almacenamiento de datos en KNULLI. Esto puede ser útil, *especialmente* si ya tienes experiencia con otros firmwares personalizados y quieres migrar tus datos.

## La carpeta `/userdata`

KNULLI admite configuraciones con **una** o **dos tarjetas SD**. Internamente, KNULLI cuenta con una carpeta llamada `/userdata` donde se almacenan **todos tus datos** (juegos, capturas de pantalla, marcos, partidas guardadas, configuraciones, temas, etc.). En una configuración con una sola tarjeta SD, la carpeta `/userdata` **siempre** apuntará a la partición *SHARE* de tu **tarjeta SD principal**. Si tienes un dispositivo con más de una ranura para tarjetas SD y decides crear una **configuración con dos tarjetas SD**, la carpeta `/userdata` apuntará a la partición principal de tu **tarjeta SD secundaria**.

Por lo tanto, **no** podrás usar la partición *SHARE* de la SD 1 y la SD 2 **al mismo tiempo**. Solo se puede montar una de esas tarjetas SD como `/userdata` a la vez. Al acceder a tu almacenamiento mediante [Transferencia de Red](./network-transfer.md) o [MTP](./accessing-via-usb.md), solo encontrarás **una** carpeta *SHARE*, que siempre apuntará a tu carpeta `/userdata`. Por lo tanto, al ejecutar una configuración de doble tarjeta SD, KNULLI no utilizará tu partición *SHARE* interna ni será accesible a través de transferencia de red o MTP.

!!! info "Almacenamiento interno y externo."

    Puedes alternar entre el modo de tarjeta SD única y doble siguiendo los pasos de la sección [Segunda Tarjeta SD](./second-sd-card.md). Básicamente, al alternar entre almacenamiento interno y externo, simplemente le indicas a KNULLI a qué unidad/partición debe apuntar la carpeta `/userdata`.

!!! info "Entendiendo el montaje en Linux."

    Los usuarios de Windows podrían no saber esto: En sistemas Linux, las unidades **no** se direccionan por "letras de unidad" como en tu equipo Windows. En su lugar, Linux monta las unidades en **carpetas**. El sistema de archivos de Linux no reconoce ninguna letra de unidad; este consiste de solo **un** árbol de archivos, donde `/` es la raíz. Cada carpeta existente es una **subcarpeta** de `/`.

    Puedes imaginar que `/` es similar a `C:\` en tu equipo Windows. Imagina que, al conectar una memoria USB, esta no aparece como `D:\`, sino como una carpeta en `C:\`, por ejemplo, `C:\media\mi-memoria-usb\`.

    KNULLI es un sistema Linux, por lo que utiliza el sistema de archivos de Linux. Más específicamente, KNULLI siempre necesita tener una carpeta llamada `/userdata` (similar a `C:\userdata`) donde KNULLI espera que se encuentren todos tus datos (juegos, temas, partidas guardadas, etc.). Sin embargo, `/userdata` **también** es un punto de montaje para una **unidad**. Al alternar entre **interno** y **externo**, básicamente le indicas a KNULLI a dónde debe apuntar `/userdata` después del siguiente arranque: **ya sea** a la partición interna *SHARE* **o** a la SD 2.

    KNULLI espera que **todos** tus datos estén en `/userdata`, **no busca** juegos, temas ni nada **fuera** de la estructura de carpetas predefinida. Por eso **no** es posible usar ambas tarjetas SD como almacenamiento de juegos **al mismo tiempo**.

## Carpetas pre-definidas para tus datos

Dentro de la carpeta `/userdata`, podrás encontrar subcarpetas donde puedes guardar tus juegos y otros archivos. Después de la primera instalación, KNULLI creará y rellenará todas estas carpetas automáticamente. Las carpetas más importantes que debes conocer son las siguientes:

* `/userdata` (Corresponde a la partición *SHARE* de tu tarjeta SD principal o a la partición principal de la tarjeta SD secundaria).
    * `/bios` Es la carpeta donde puedes guardar tus BIOS.
    * `/cheats` Es la carpeta donde puedes guardar tus trucos.
    * `/decorations` Es la carpeta donde puedes guardar tus decoraciones/marcos.
    * `/music` Es la carpeta donde puedes guardar archivos MP3 y OGG para que se reproduzcan como música de fondo en EmulationStation. (Las canciones deben tener una frecuencia de muestreo de 44100 Hz y una tasa de bits máxima de 256 kb/s).
    * `/roms` Es la carpeta donde puedes guardar tus juegos. Dentro de esta carpeta encontrarás subcarpetas para todos los sistemas compatibles. Simplemente coloca los archivos de tus juegos en las carpetas del sistema para el que fueron creados, por ejemplo:
        * `/snes` Es la carpeta donde se deben guardar tus juegos de SNES.
        * `/gb` Es la carpeta donde se deben guardar tus juegos de Gameboy.
        * `/ports` Es la carpeta donde se deben almacenar tus ports (incluido [PortMaster](../../systems/portmaster.md)).
        * ...
    * `/saves` Es la carpeta donde se guardarán tus partidas guardadas, así como los estados de guardado de los núcleos.
    * `/screenshots` Es la carpeta donde se guardarán tus capturas de pantalla.
    * `/system` Es la carpeta donde se guardará tu configuración. No deberías cambiar nada aquí, a menos que estés completamente seguro de saber lo que haces. Sin embargo, no está de más incluir esta carpeta en tus copias de seguridad. Además, esta carpeta se considera tu directorio personal de Linux (`$HOME`, `~`).
    * `/theme-customizations` Es la carpeta donde se guardarán las personalizaciones de tus temas.
    * `/themes` Es la carpeta donde se guardarán tus temas.

!!! info "Carpetas para tus juegos."

    KNULLI solo busca juegos en las subcarpetas de la carpeta `roms`. Los juegos almacenados en cualquier otra carpeta no se reconocerán como tales. ¡Si no estás seguro de qué carpeta elegir para tus juegos, te recomendamos consultar la [Wiki de Batocera](https://wiki.batocera.org/systems)!

!!! info "KNULLI distingue entre mayúsculas y minúsculas."

    KNULLI es un sistema Linux que *distingue entre mayúsculas y minúsculas*. Por lo tanto, presta atención a las mayúsculas al renombrar carpetas o migrarlas desde otros sistemas/dispositivos.
