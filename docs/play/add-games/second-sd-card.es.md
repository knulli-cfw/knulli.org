# :material-micro-sd: Usar una Segunda Tarjeta SD

!!! info "Migración a Doble Tarjeta SD."

    Esta sección está dirigida a usuarios que están trabajando en su **configuración inicial de KNULLI**. Si ya has comenzado a configurar KNULLI en una sola tarjeta SD y quieres **migrar a una configuración de doble tarjeta SD**, te recomendamos consultar nuestra guía de [Migración a Doble Tarjeta SD](../../guides/dual-sd-card-migration.md).

Si usas KNULLI en un dispositivo con una segunda ranura para tarjetas SD, puedes usarla para una tarjeta SD secundaria, que puede usarse **en lugar** de la partición *SHARE* de la tarjeta SD principal.

Ten en cuenta que **no es posible** usar las tarjetas SD 1 y SD 2 como almacenamiento para juegos **al mismo tiempo**. Puedes usar **ya sea** la SD 1 **o** la SD 2, ¡pero no ambas a la vez! Para obtener más información, consulta la sección [Almacenamiento de los Juegos](./game-storage.md).

Usar una configuración de doble tarjeta SD tiene muchas ventajas:

* En caso de una **actualización defectuosa**, a veces es necesario volver a flashear todo el firmware personalizado. Con una configuración de doble tarjeta SD, puedes simplemente volver a flashear la SD 1, pero tus datos no se borrarán, ya que están almacenados de forma segura en la SD 2.
* Si tienes más de un dispositivo, es posible usar la misma tarjeta SD en **varios dispositivos**.
* **Crear copias de seguridad** de tus datos puede ser más sencillo, ya que puedes simplemente duplicar toda la SD 2, por ejemplo, creando una imagen y flasheándola en otra tarjeta SD.

## Configurar una Segunda Tarjeta SD

* Apaga tu dispositivo KNULLI (si está encendido).
* Inserta la segunda tarjeta SD en la ranura correspondiente con el dispositivo apagado.
* Inicia KNULLI, abre el menú principal presionando el botón ++"Start"++ y selecciona *Ajustes del Sistema*.
* Busca la sección *Almacenamiento*, donde podrás seleccionar tu *Dispositivo de Almacenamiento*.
    * Cambia de *Interno* (el almacenamiento "interno" es la partición *SHARE* de tu tarjeta SD con KNULLI) al nombre de tu segunda tarjeta SD, por ejemplo, *SHARE - 25.6G*.
* Reinicia KNULLI para aplicar los cambios presionando el botón ++"Start"++ y seleccionando *Reiniciar Sistema* en la sección *Salir*.
* Si tu tarjeta SD secundaria **aún no** está formateada con el sistema de archivos que prefieras:
    * Sigue las instrucciones de la sección [Formatear](./formatting.md) para formatear tu tarjeta SD con el **formateador integrado de KNULLI**.
    * Asegúrate de reiniciar nuevamente para aplicar el formateo.
* Durante el reinicio, KNULLI generará automáticamente en la segunda tarjeta SD todas las carpetas y archivos necesarios que normalmente se encuentran en la [carpeta userdata](./game-storage.md)/partición *SHARE*.
* Si tu segunda tarjeta SD está formateada en exFAT, puedes apagar el dispositivo ahora y extraerla. Puedes insertarla en tu computadora para acceder a ella y cargarle tus datos.
