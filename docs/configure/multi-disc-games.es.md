# :material-disc: Juegos Multidiscos

Algunos videojuegos para consolas con lector de discos, especialmente aquellos con muchas cinemáticas, vienen en más de un disco. Después de [Añadir Juegos](../play/add-games/index.md) multidiscos a tu dispositivo KNULLI, cada disco aparecerá como un juego independiente. Por supuesto, esto añade desorden innecesario a tu lista de juegos. Por ello, KNULLI incluye una función que te permite ocultar **todos** los discos del juego multidiscos y mostrar una **lista de reproducción** en su lugar.

Solo tienes que crear un archivo de **lista de reproducción `.m3u`** dentro de la carpeta de las ROMs del sistema correspondiente y añadir las **rutas relativas** a todas las **imágenes de disco** en el **orden correcto**.

Si no sabes cómo hacerlo, sigue esta guía, te guiará paso a paso.

!!! info "Asegúrate de que la opción "Ignorar Contenido de Disco Multiple" esté activada."

    KNULLI incluye una configuración que permite ocultar o mostrar el contenido (los discos individuales) de los juegos multidiscos. Por defecto, esta opción está **activada**. Sin embargo, si tienes problemas con discos individuales que aparecen de forma no deseada en tu dispositivo KNULLI, asegúrate de que esta función esté **activada**.

    Presiona ++"START"++ para acceder al menú principal, ve a *Ajustes del Sistema* y luego a *Opciones de Desarrollador*. Allí encontrarás la opción *Ignorar Contenido de Disco Multiple (CUE/GDI/CCD/M3U)*. Asegúrate de que esté **activada**. Para aplicar los cambios realizados, deberás actualizar tus listas de juegos accediendo a *Ajustes de Juegos* desde el menú principal y seleccionando *Actualizar Listas de Juegos*.

    Esta opción **ocultará** todos los archivos de disco que estén **correctamente referenciados** en una **lista de reproducción**. Si tus discos de juego siguen apareciendo, es probable que haya algún problema con tu archivo `.m3u`.

## Cómo almacenar archivos de juegos multidiscos

Existen varias maneras de almacenar archivos de juegos multidiscos. Tomemos como ejemplo el clásico de PlayStation, *Metal Gear Solid*.

Como se explica detalladamente en la sección [Añadir Juegos](../play/add-games/index.md), todos tus juegos deben almacenarse en la carpeta `userdata/share`, dentro de una subcarpeta de `roms` que corresponda al sistema para el que se desarrolló el juego; en este caso, `psx`, la carpeta de juegos de PlayStation.

### Nivel superior de la carpeta ROMs del sistema

Algunos usuarios prefieren añadir sus juegos multidiscos a la carpeta ROMs como cualquier otro juego:

```
/roms
 └─ psx/
    ├─ Metal Gear Solid (Disc 1).chd
    └─ Metal Gear Solid (Disc 2).chd
```

### Subcarpeta específica del juego dentro de la carpeta de ROMs del sistema

Algunos usuarios prefieren crear una subcarpeta para cada juego multidiscos y guardar allí todos los archivos:

```
/roms
 └─ psx/
    └─ Metal Gear Solid
       ├─ Metal Gear Solid (Disc 1).chd
       └─ Metal Gear Solid (Disc 2).chd
```

### Subcarpeta "oculta" dentro de la carpeta de ROMs del sistema

Algunos usuarios prefieren guardar todos sus juegos multidiscos en una subcarpeta llamada `hidden` (oculta), o similar:

```
/roms
 └─ psx/
    └─ hidden
       ├─ Metal Gear Solid (Disc 1).chd
       └─ Metal Gear Solid (Disc 2).chd
```

## Creación de la lista de reproducción

Después de guardar los archivos en tu dispositivo KNULLI, puedes crear una **lista de reproducción** para agrupar todos los discos de un mismo juego en un solo archivo.

Para ello, crea un archivo de texto plano con la **extensión** `.m3u`. Lo ideal es que el archivo `.m3u` tenga el mismo nombre que el juego y sus discos; así que para el ejemplo anterior, el nombre del archivo debería ser `Metal Gear Solid.m3u`.

Siguiendo con los ejemplos anteriores, tienes dos opciones para guardar el **archivo de la lista de reproducción**: puedes guardarlo en la carpeta raíz de `roms/psx` u **opcionalmente** en la misma subcarpeta donde guardaste los archivos del juego. Dependiendo de dónde estén guardados los archivos del juego y la lista de reproducción, y de su relación entre sí, deberás **editar** el archivo de la lista de reproducción:

### Archivos de juego y lista de reproducción en la misma carpeta

Si decides guardar los archivos del juego y la lista de reproducción en la **misma carpeta**, asegúrate de que el archivo `.m3u` haga referencia directamente a los archivos del juego **sin especificar la ruta**.

Para los ejemplos anteriores, el archivo `Metal Gear Solid.m3u` debería contener:

```
Metal Gear Solid (Disc 1).chd
Metal Gear Solid (Disc 2).chd
```
Si se encuentra en la misma carpeta que `Metal Gear Solid (Disc 1).chd` y `Metal Gear Solid (Disc 2).chd`.

### Lista de reproducción y archivos del juego en carpetas diferentes

Si decides guardar los archivos del juego y la lista de reproducción en **carpetas diferentes**, asegúrate de que tu archivo `.m3u` **incluya la ruta** al hacer referencia a los archivos del juego.

Para los ejemplos anteriores, el archivo `Metal Gear Solid.m3u` debería contener:

```
Metal Gear Solid/Metal Gear Solid (Disc 1).chd
Metal Gear Solid/Metal Gear Solid (Disc 2).chd
```

Si tu archivo `Metal Gear Solid.m3u` está almacenado en `roms/psx` y los archivos del juego están almacenados en `roms/psx/Metal Gear Solid`.