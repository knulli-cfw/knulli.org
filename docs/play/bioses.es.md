# :material-chip: BIOS

Una BIOS (sistema básico de entrada/salida ó **B**asic **I**nput/**O**utput **S**ystem en inglés) es un software que proporciona acceso básico y de bajo nivel al hardware de un sistema informático. Muchos sistemas informáticos vienen con una BIOS preinstalada, integrada en el hardware y a menudo almacenada en la memoria de solo lectura (**R**ead-**O**nly **M**emory en inglés, ROM). Algunas consolas de videojuegos también incluyen BIOS. Al emular estos sistemas, a veces se requieren las BIOS para emularlos correctamente.

!!! warning "Las BIOS están protegidas por derechos de autor."

    Al igual que muchos juegos, el firmware de la BIOS está protegido por derechos de autor. Por lo tanto, ¡KNULLI **no** incluye archivos de BIOS! Si deseas emular sistemas con KNULLI, deberás proporcionar los archivos de BIOS necesarios.

## Agregar archivos de BIOS

KNULLI incluye numerosos emuladores para diversos sistemas. No todos requieren archivos de BIOS. Sin embargo, los emuladores que sí los requieren esperan que estos se almacenen en la carpeta `bios`. Los emuladores esperan que los archivos se almacenen con nombres muy específicos, a veces incluso en una subcarpeta específica.

### Identificar archivos de BIOS faltantes

Afortunadamente, KNULLI incluye una *Comprobación de BIOS Ausentes* que te ayuda a determinar qué archivos de la BIOS faltan para que tus emuladores los ejecuten. Para iniciar la *Comprobación de BIOS Ausentes*, presiona ++"Start"++ y ve a *Ajustes de Juegos*, donde encontrarás la *Comprobación de BIOS Ausentes*. Aquí se te informará sobre todos los archivos de la BIOS que **faltan** por completo o cuyo checksum no coincide, lo que podría indicar que se trata de archivos **incorrectos** en el lugar correcto.

Asegúrate de **prestar atención** a:

* La **ruta** del archivo (¿Es `bios/[nombre de archivo]` o `bios/[subdirectorio]/[nombre de archivo]`?).
* La **ruta o nombres** de archivos **exactos** (ten en cuenta los espacios, guiones bajos, etc.).
* Las letras mayúsculas o minúsculas. (¡Knulli **distingue entre mayúsculas y minúsculas**!).
* Si el archivo realmente **falta** o simplemente tiene un **checksum** incorrecto, lo que indica que es un archivo **incorrecto** y no un archivo **faltante**.

!!! info "Archivos con checksum incorrecto."

    La *Comprobación de BIOS Ausentes* es **muy estricta** con los checksums correctos. Sin embargo, en algunos casos, aunque los checksums **no coincidan**, los archivos de las BIOS siguen **funcionando correctamente**. Si los archivos de las BIOS están en el lugar correcto, pero no superan la prueba de checksum, intenta ejecutar los juegos de todos modos.

Además, si usas Microsoft Windows, te recomendamos asegurarte de que las **extensiones de archivo** sean **visibles** en el Explorador de Windows. De esta forma, evitarás tener **extensiones de archivo duplicadas** accidentalmente, como `.bin.bin`, o **extensiones incorrectas**, como `.bin.zip`.

Si deseas obtener más información sobre archivos BIOS compatibles, consulta la sección de [Sistemas](https://wiki.batocera.org/systems) de la Wiki de Batocera. En esta sección, encontrarás información detallada sobre los archivos BIOS necesarios para diferentes sistemas.

!!! info "Avisos de BIOS faltantes."

    Al iniciar un juego, KNULLI te avisa si faltan archivos de la BIOS. Es posible (aunque no recomendable) desactivar esta función: presiona ++"Start"++ para abrir el menú principal, ve a *Ajustes de Juegos* y desactiva *Verificar BIOS Antes de Iniciar un Juego*.

#### Añadir los archivos

Puedes añadir los archivos a la carpeta `bios` de la misma forma que añades los juegos a la carpeta `roms`. Encontrarás instrucciones detalladas en la sección [Añadir juegos](../play/add-games/index.md). Asegúrate de añadir los archivos de las BIOS *exactamente* como se indica en la *Comprobación de BIOS Ausentes*.
