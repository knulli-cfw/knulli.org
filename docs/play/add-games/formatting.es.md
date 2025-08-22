# :material-folder-cog: Formatear

## Antes de formatear

* Ten en cuenta que formatear implica la **eliminación permanente** de **todos los datos** del dispositivo de almacenamiento formateado.
* Asegúrate de elegir el **disco correcto** para formatear, ¡especialmente si tienes una **configuración de dos tarjetas SD**!
* **Evita** formatear directamente desde tu computadora Windows/MacOS/Linux y, si es posible, ¡utiliza el **formateador KNULLI integrado**!

## El formateador integrado

### Sistemas de archivos disponibles

El formateador integrado de KNULLI tiene soporte para dos sistemas de archivos diferentes:

* **ext4** es un sistema de archivos de Linux al que **no se puede acceder** directamente desde Windows/MacOS.
* **exFAT** es un sistema de archivos compatible con Windows/MacOS, utilizado por la mayoría de los firmwares personalizados, smartphones, etc.

### Formatear

El formateador KNULLI integrado permite formatear tanto el almacenamiento interno de datos de la tarjeta SD principal (**interna**) como la segunda tarjeta SD opcional (**externa**).

Para formatear el almacenamiento de datos con el sistema de archivos que prefieras, abre el menú principal de KNULLI presionando ++"Start"++ y selecciona *Formatear un Disco* en la sección *Opciones de Desarrollador* de *Ajustes del Sistema*. Asegúrate de seleccionar el *Dispositivo a Formatear* y el *Sistema de Archivos* correctos. Ten en cuenta que, tras seleccionar *Formatear Ahora*, deberás reiniciar el dispositivo para aplicar el formateo.

!!! info "Después de formatear."

	Después de formatear, KNULLI creará y llenará la [carpeta `/userdata`](../game-storage) por ti.

## Formatear con Windows

Formatear con Windows solo es útil si deseas formatear tu tarjeta SD usando **exFAT**.

Si deseas formatear tu tarjeta SD desde Windows, te recomendamos usar la herramienta **Administrador de Discos** de Windows, que te facilitará el formateo de **la partición correcta**. Puedes encontrar la herramienta abriendo el menú Inicio y escribiendo `Administrador de Discos`. (La herramienta se mostrará con el nombre *"Crear y formatear particiones del disco duro"*).

<table>
	<tr>
		<td width="50%">
			<img src="/_inc/images/play/formatting/001-formatting-after-flashing-not-yet-expanded.png">
			<p><strong>Paso 1: </strong>Asegúrate de que tus particiones se hayan expandido correctamente antes de continuar. La captura de pantalla muestra una tarjeta SD <strong>antes</strong> de expandir la partición share, con mucho espacio <strong>sin asignar</strong>. Para asegurar que la partición se expanda correctamente, te recomendamos iniciar tu dispositivo KNULLI desde la tarjeta SD antes de continuar.</p>
		</td>
		<td width="50%">
			<img src="/_inc/images/play/formatting/002-formatting-delete-volume.png">
	    	<p><strong>Paso 2: </strong>Después de que se haya inicializado tu tarjeta SD, busca la partición más grande, ahora expandida, haz clic derecho y selecciona <em>Eliminar volumen...</em>.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/003-formatting-create-volume.png">
			<p><strong>Paso 3: </strong>Haz clic derecho en el espacio ahora no asignado y selecciona <em>Nuevo volumen simple....</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/004-formatting-create-volume-max-size.png">
			<p><strong>Paso 4: </strong>Asegúrate de asignar todo el espacio de disco disponible al volumen recién creado.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/005-formatting-create-volume-assign-drive-letter.png">
			<p><strong>Paso 5: </strong>Asigna una letra de unidad al volumen recién creado. (Puedes elegir la letra que quieras; no importa; te recomendamos usar la que Windows sugiera automáticamente).</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/006-formatting-create-volume-format-to-exfat.png">
			<p><strong>Paso 6: </strong>Asegúrate de formatear el volumen con el sistema de archivos <strong>exFAT</strong>, el tamaño de unidad de asignación <strong>predeterminado</strong> y la etiqueta de volumen <code>share</code>.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/007-formatting-formatted-to-exfat.png">
			<p><strong>Paso 7: </strong>Verifica que ahora tengas una partición <em>share</em> formateada en exFAT.</p>
		</td>
		<td></td>
	</tr>
</table>

!!! info "Después de formatear."

	Después de formatear, deberás insertar la tarjeta SD en tu dispositivo e iniciar KNULLI. Durante el arranque, KNULLI creará y llenará la [carpeta `/userdata`](../game-storage) por ti.
