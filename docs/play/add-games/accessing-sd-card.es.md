# :material-micro-sd: Acceso a la Tarjeta SD

Dependiendo del formato de tu partición *SHARE* (o de tu segunda tarjeta SD), las opciones para acceder directamente a la tarjeta SD son muy diferentes. Esta sección te ofrece una descripción general de las opciones disponibles.

Si no estás satisfecho con tu formato actual, siempre puedes usar el formateador integrado de KNULLI para cambiar el formato del almacenamiento de tus datos. Ten en cuenta que **todo el contenido de tu almacenamiento de datos se perderá** si decides formatear. Puedes obtener más información sobre el formateo en la sección [Formatear](../formatting).

## Acceder a una Tarjeta SD Formateada en exFAT

exFAT es el sistema de archivos predeterminado para tarjetas SD y memorias USB. Windows, macOS y Linux son compatibles con exFAT de fábrica. Simplemente conecta la tarjeta SD al lector de tarjetas SD de tu computadora (o usa un lector de tarjetas SD externo) y accede a ella como lo harías con cualquier otra tarjeta SD o memoria USB.

## Acceder a una Tarjeta SD Formateada en ext4

ext4 es un sistema de archivos para equipos Linux. Lamentablemente, Windows y macOS no lo entienden, por lo que no podrás acceder a tu tarjeta SD desde un ordenador con Windows o macOS sin software de terceros.

### Opción 1: Linux

Si tienes acceso a una computadora con Linux, podrás acceder a la partición *SHARE* de cualquier modo, incluso si está formateada en ext4. Simplemente conecta la tarjeta a tu computadora con Linux y podrás explorar los directorios y agregar archivos directamente.

!!! warning "Posible problema con el acceso directo desde Linux."

    Algunos usuarios han reportado problemas con sus tarjetas SD después de acceder a ellas desde Linux. Te sugerimos evitar el acceso desde Linux por ahora y, si es posible, probar la [**Transferencia de Red**](../network-transfer).

### Opción 2: Software de terceros

Algunos desarrolladores externos ofrecen soluciones de software para acceder a los sistemas de archivos de Linux desde Windows/MacOS:

* Paragon EXTFS para Windows/Mac es una herramienta de pago, pero muy recomendable, ya que permite un acceso fluido a ext2/3/4.
* DiskGenius para Windows es una herramienta que no podemos recomendar, ya que funciona mal y tiende a dañar la partición y su contenido.

!!! warning "Pérdida de datos."

    Generalmente, **no** recomendamos usar software de terceros para acceder a los sistemas de archivos de Linux. De cualquier modo, si sabes lo que haces, puedes intentar esta solución. Sin embargo, ten en cuenta que corres el riesgo de perder datos.
