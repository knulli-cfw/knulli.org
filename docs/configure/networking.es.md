# :material-wifi: Redes

Muchos dispositivos compatibles con KNULLI pueden conectarse a internet y a redes locales. En la mayoría de los casos, esto se consigue mediante un adaptador Wi-Fi integrado. Sin embargo, KNULLI también admite la conexión de red mediante adaptadores USB.

## Adaptadores de red compatibles

Algunos dispositivos compatibles con KNULLI (p. ej., Anbernic RG35XX Plus/H/SP, TrimUI Smart Pro) ya incluyen un adaptador de red integrado totalmente compatible con KNULLI. Si tu dispositivo incluye un adaptador Wi-Fi integrado, puedes pasar directamente a la [Configuración Wi-Fi](#configuracion-wi-fi).

Sin embargo, incluso los dispositivos sin adaptador de red integrado (p. ej., Anbernic RG35XX 2024, Anbernic RG28XX) pueden conectarse a tu Wi-Fi. KNULLI admite adaptadores Wi-Fi USB externos basados ​​en los chipsets *RTL8192cu* o *RTL8188eu/us*. En concreto, la comunidad KNULLI recomienda encarecidamente el adaptador de red **TP-Link TL-WN725N**.

Para activar tu adaptador de red USB:

- Conéctalo a un puerto USB adecuado de tu dispositivo KNULLI.
- Presiona el botón ++"Start"++ y ve a *Ajustes del Sistema*. Allí encontrarás *Servicios*, donde debes activar `ENABLE_WIFI_DONGLE` **después** de conectar el adaptador de red a tu dispositivo.
- Sigue las instrucciones en [Configuración Wi-Fi](#configuracion-wi-fi).

## Configuración Wi-Fi

!!! danger "Problemas con WPA2+WPA3 en dispositivos Anbernic"

    Algunos usuarios han experimentado problemas al conectar **dispositivos Anbernic H700** de la **serie RG XX** a una **red Wi-Fi con protección WPA2+WPA3**. KNULLI actualmente **no es compatible** con redes WPA2+WPA3 en dispositivos Anbernic, por lo que recomendamos reducir las medidas de seguridad y cambiar la red Wi-Fi a WPA1+WPA2 si es posible.

    Sin embargo, desde KNULLI Firefly, el sistema operativo ofrece un **servicio experimental** que podría permitirte conectarte a tu red Wi-Fi con protección WPA2+WPA3 de todos modos. Si tienes problemas para conectarte a tu red Wi-Fi, intenta activar el servicio. Presiona ++"Start"++ para abrir el menú principal, ve a *Ajustes del Sistema*, luego a *Servicios* y activa *WIRELESS_HYBRID_FIX*. Ten en cuenta que esta función es **experimental**.

Si tu dispositivo tiene un adaptador Wi-Fi integrado, puedes configurarlo directamente a través de KNULLI. Presiona el botón ++"Start"++ para abrir el menú principal y ve a *Configuración de Red*, donde podrás configurar tu conexión Wi-Fi. Activa la opción *Activar Wifi*, selecciona tu red en *SSID o Nombre de la Wifi*, introduce tu *Clave Wifi* y sal del menú para conectarte.

En la sección superior, puedes ver si estás conectado a una red Wi-Fi, tu dirección IP actual y activar o desactivar el indicador de red.

### Múltiples redes Wi-Fi (hasta 3)

KNULLI ofrece opciones adicionales ocultas en la interfaz gráfica de usuario (GUI) para que los usuarios con conocimientos técnicos puedan aprovecharlas. A través de la GUI, puedes elegir solo un SSID de red Wi-Fi mediante descubrimiento y proporcionar una clave mediante el teclado virtual. Si juegas fuera de casa, quizás quieras un poco más de flexibilidad para puntos de acceso adicionales. Puedes configurar una red Wi-Fi secundaria y una terciaria editando directamente el archivo `batocera.conf`. Puedes acceder al archivo de la misma manera que agregas tus juegos, como se describe en la sección [Añadir Juegos](../play/add-games/index.md), o usar un editor de línea de comandos mediante [SSH](./ssh.md). El archivo se encuentra en `/userdata/system/batocera.conf` o `SHARE\system\batocera.conf`, según tu perspectiva. En `batocera.conf`, simplemente busca y edita las siguientes líneas:

```
## Secondary Wi-Fi
wifi2.ssid=wifiname2
wifi2.key=supergoodkey2

## Third Wi-Fi
wifi3.ssid=wifiname3
wifi3.key=supergoodkey3    
```
!!! warning "Protección con contraseña"

    De forma predeterminada, tu dispositivo KNULLI no requiere una contraseña de root para acceder a él. Por lo tanto, en cuanto te conectas a una red, los datos de tu dispositivo se vuelven accesibles en tu red local sin necesidad de protección con contraseña. Si bien esto puede ser práctico en tu hogar, puede representar un grave riesgo de seguridad al conectarte a una red que no controlas. Te recomendamos fuertemente que actives **medidas de seguridad adicionales**.

### Seguridad adicional

Presiona el botón ++"Start"++ para abrir el menú principal, ve a *Ajustes del Sistema* y busca *Seguridad*. Allí, puedes activar o desactivar la opción *Reforzar Seguridad*. Ten en cuenta que debes reiniciar el dispositivo para que el cambio surta efecto.

Después de activar la seguridad adicional y reiniciar el dispositivo, vuelve al menú *Seguridad*. Debajo de *Reforzar Seguridad*, encontrarás la *Contraseña Root*. Esta contraseña se genera aleatoriamente y, a veces, cambia automáticamente cuando el sistema recibe actualizaciones o se modifican ajustes importantes. Sin embargo, siempre podrás consultar tu contraseña de root actual volviendo a este menú.

La contraseña y el nombre de usuario `root` deberán usarse para acceder al dispositivo a través de la red a partir de ahora.

!!! warning "Redes desconocidas"

    Ten en cuenta que KNULLI está diseñado para juegos retro y un fácil acceso a la red. Si bien esta configuración dificultará el acceso a la partición de datos de usuario, no debes conectar su dispositivo con KNULLI a ninguna red local desconocida.

### Hostname

El hostname predeterminado del dispositivo siempre será `KNULLI`. Sin embargo, puedes elegir tu propio hostname, lo cual puede ser útil si tienes más de un dispositivo con KNULLI en tu red local. Dentro de tu red local, el hostname debe ser único, si es posible.

Si deseas cambiar el hostname de tu dispositivo, presiona el botón ++"Start"++ para abrir el menú principal y ve a *Configuración de Red*, donde podrás modificar el hostname en *Nombre del Equipo (hostname)*.

Los usuarios de Windows pueden usar el hostname para encontrar el dispositivo y acceder a la partición de datos de usuario. Cuando el dispositivo esté encendido y conectado a tu red local, lo encontrarás en el Explorador de Windows, en la sección "Red", debajo de su hostname. También puedes acceder al dispositivo directamente escribiendo la ruta en la barra de direcciones del Explorador de Windows.

La ruta

```
\\KNULLI\share
```

(reemplaza `KNULLI` con el hostname si lo cambiaste) te llevará directamente a la carpeta `/userdata`, donde encontrarás tus ROMs, archivos de BIOS, etc. Consulta la sección [Añadir Juegos](../play/add-games/index.md) para obtener más información.
