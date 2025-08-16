#  :material-update: Actualizar KNULLI

Si deseas actualizar KNULLI, normalmente tienes tres opciones:

* Utilizar la función OTA (Over The Air) integrada para actualizar la instalación actual de KNULLI.
* **Reinstalar** KNULLI para tener una instalación limpia de la nueva versión.
* Actualizar KNULLI manualmente reemplazando el **paquete de arranque**.

## Actualizaciones OTA

!!! info "Las actualizaciones OTA requieren una conexión a internet activa."

    Los dispositivos sin wi-fi no podrán instalar actualizaciones OTA, ¡ya que requieren que KNULLI obtenga la actualización de internet!

Antes de intentar instalar desde cero o actualizar manualmente, deberías verificar si la actualización que buscas está disponible vía OTA (Over The Air):

* Presiona ++"Start"++ para abrir el menú principal.
* Ve a *Actualizaciones y Descargas*.
* Asegúrate de que *Buscar Actualizaciones* esté *activado* para recibir información sobre las nuevas versiones de KNULLI justo después del arranque.
* Configura el *Tipo de Actualización* como *Estable* (las versiones *Alfa* y *Desarrollo* están actualmente restringidas solo a desarrolladores y testers alfa).
* Pulsa *Iniciar Actualización* para buscar actualizaciones.
* Si hay una actualización disponible, sigue las instrucciones en pantalla.
* Las actualizaciones pueden tardar un poco; si tienes poca batería, te recomendamos conectarte a una fuente de alimentación antes de empezar a actualizar.
* **NO** interrumpas el dispositivo mientras se esté ejecutando una actualización, **NO** intentes jugar ni hacer nada más mientras se esté ejecutando una actualización, ¡solo espera!

!!! info "Actualizaciones Alfa."

    Para usuarios comunes, actualmente **solo** hay actualizaciones *estables* disponibles. El acceso a las actualizaciones *alfa* está limitado a los **testers alfa de KNULLI**. Si te interesa convertirte en tester alfa, consulta la sección [Contribuir](../../community/contribute).

## Actualizaciones Mayores

Las actualizaciones mayores de KNULLI (por ejemplo, la actualización de **20240721** a **Firefly**) requieren una reinstalación completa del firmware personalizado de KNULLI y un reinicio completo de todas tus **configuraciones**. Por lo tanto, las actualizaciones mayores de KNULLI **no** incluyen un paquete de arranque a propósito. Si deseas instalar una actualización importante de KNULLI, te recomendamos fuertemente crear una copia de seguridad de tu [carpeta userdata](../add-games/game-storage) antes de reinstalar. Además, si utilizas una configuración de doble tarjeta SD, **debes** eliminar tu carpeta `system` de tu [carpeta userdata](../add-games/game-storage) para que KNULLI pueda crear una nueva con todas las nuevas configuraciones predeterminadas. Una vez que la nueva versión de KNULLI esté funcionando, podrás restaurar la copia de seguridad copiando de vuelta todos tus archivos.

Si necesitas más ayuda para instalar una actualización mayor, consulta nuestra [Guía de Actualizaciones Mayores](../../guides/major-updates).

!!! danger "La carpeta system."

    Después de una actualización importante, **no restaures la carpeta `system`** de tu instalación anterior. Si sabes lo que haces, puedes seleccionar ciertas configuraciones (por ejemplo, archivos de remapeo). Sin embargo, ten en cuenta que las actualizaciones importantes a veces añaden, eliminan o renombran opciones. Confiar en tu configuración anterior es **extremadamente** propenso a causar problemas.

## Actualizaciones Menores

!!! info "Actualizaciones OTA."

    Batocera admite actualizaciones OTA (Over-The-Air), que se pueden ejecutar directamente desde la interfaz gráfica de EmulationStation. Por lo tanto, KNULLI también muestra el menú de actualizaciones OTA. Sin embargo, actualmente **no tenemos servidores OTA** configurados. Hasta que lo hagamos, te pedimos que actualices tu instalación de KNULLI **manualmente**.

Puedes actualizar KNULLI descargando el **paquete de arranque** para tu dispositivo y reemplazando manualmente el archivo `batocera`.

1. Descarga el **paquete de arranque** más reciente para tu dispositivo desde nuestra [Página de Versiones](https://github.com/knulli-cfw/distribution/releases/latest) siguiendo estos pasos:
    * Desplázate hasta el final de la última versión para encontrar su lista de **recursos**.
    * Identifica el **paquete de arranque** para tu dispositivo asegurándote de que:
        * contenga el nombre del dispositivo (por ejemplo, `rg35xx-h` para la Anbernic RG35XX-H).
        * **termina** con `boot.gz`, `boot.xz`, `boot.tar.gz` o `boot.tar.xz`.
        * tiene un tamaño aproximado de 1.5-2.0 GB.
    * Si tienes alguna pregunta, puedes consultar la sección de [Dispositivos Soportados](../devices/index.md) para confirmar qué imagen deberías descargar para tu dispositivo.
2. Extrae los datos del archivo comprimido (por ejemplo, con [7-Zip](https://7-zip.org/)).
    * Ten en cuenta que un paquete que termina en `tar.gz` o `tar.xz` contiene un archivo comprimido dentro de otro archivo comprimido, por lo que es posible que primero debas extraer el archivo `tar` del archivo `gz`/`xz` antes de poder extraer el contenido del archivo `tar`.
3. Inserta la tarjeta SD de KNULLI en el lector de tarjetas SD de tu computadora.
4. Reemplaza el archivo `boot/batocera` de la partición *BATOCERA* de su tarjeta SD con el archivo `boot/batocera.update` del archivo que descargaste siguiendo estos pasos:
    * **Elimina** el archivo `batocera` existente o renombra el archivo `batocera` actual (por ejemplo, a `batocera.bak`) si deseas conservarlo, por ejemplo, para poder volver a la versión anterior de KNULLI. (Si aún conservas una copia de seguridad de una versión anterior de KNULLI, puedes eliminarla ahora para liberar espacio).
    * **Copia** el archivo `batocera.update` que extrajiste del **paquete de arranque** a la carpeta `boot` en la unidad `batocera` de tu tarjeta SD.
    * **Renombra** `batocera.update` como `batocera`.
5. Reinicia el dispositivo y la actualización comenzará automáticamente.

!!! danger "Restablecer la configuración predeterminada."

    **Normalmente**, las actualizaciones menores de KNULLI **NO** requieren que vuelvas a crear ni un solo archivo de configuración ni toda la carpeta `system`. Sin embargo, en **casos MUY excepcionales**, podría ser necesario adaptar tu configuración a la nueva configuración predeterminada de KNULLI. En esos casos, la forma más sencilla es restablecer la configuración de fábrica, ya sea recreando archivos individuales o, en ocasiones, toda la carpeta `system`. Puedes aprender más al respecto en la sección [Reinicio de Fábrica](../../configure/reset-to-factory-settings). Sin embargo, **NO** lo hagas a menos que estés completamente seguro de que es necesario.
