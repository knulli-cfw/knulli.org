# :material-wifi-plus: Transferencia de Red

La transferencia de red se puede usar en cualquier dispositivo que se conecte a internet o a una red local. (Esto incluye dispositivos con funciones de red nativas y aquellos a los que se le pueden añadir mediante un adaptador externo).

Esta opción requiere que primero configures la red en tu dispositivo. Consulta la sección [Redes](../../../configure/networking) para obtener más información. Una vez completados esos pasos, necesitarás:

* El hostname o la dirección IP de tu dispositivo.
* La contraseña de root, si existen medidas de seguridad adicionales, como se explica en la sección [Redes](../../../configure/networking).

!!! info "Credenciales predeterminadas."

	El **nombre de usuario** predeterminado para acceder a su dispositivo a través de la red es `root`. La **contraseña** predeterminada es `linux`.

### Redes de Windows (SMB)

!!! info "SMB ahora es un servicio."

	A partir de KNULLI Gladiator II, SMB es un servicio que puedes activar y desactivar cuando quieras. Para usuarios que no lo necesitan, deshabilitarlo puede ahorrar un poco de batería.

	Para activar SMB, ve a *Ajustes del Sistema*, luego a *Servicios* y ¡activa SAMBA!

Al igual que muchos otros sistemas operativos, KNULLI es compatible con SMB (también llamado SAMBA), el protocolo de redes de Windows. Desde KNULLI Gladiator II, SMB ya no está activado por defecto. Sin embargo, siempre puedes activar o desactivar SMB a tu gusto. Para activar o desactivar SMB, ve a *Ajustes del Sistema*, luego a *Servicios* y activa/desactiva *SAMBA*.

Ahora, según el tipo de computadora que tengas, existen diferentes opciones para transferir tus juegos y otros datos mediante SMB. Una vez que hayas accedido a tu dispositivo, podrás acceder a la partición `share` como una unidad de red. La unidad de red corresponde a tu [carpeta `/userdata`](../game-storage) actual. Aquí puedes poner todos tus datos (juegos, etc.) en las carpetas correspondientes.

#### Windows

En las computadoras con Windows, SMB está integrado en el *Explorador de Windows*.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>Paso 1a: </strong>Busca tu dispositivo KNULLI en la sección <em>Red</em> del <em>Explorador de Windows</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>Paso 1b: </strong>Busca tu dispositivo KNULLI escribiendo <code>\\KNULLI</code> en la barra de direcciones del <em>Explorador de Windows</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>Paso 2: </strong>Abre la carpeta <code>share</code> de tu dispositivo KNULLI para ver el contenido de la carpeta <code>/userdata</code>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>Paso 3: </strong>Abre la carpeta <code>roms</code> de tu dispositivo KNULLI para encontrar las subcarpetas de cada sistema (por ejemplo, SNES).</p>
		</td>
	</tr>
</table>

Si deseas acceder a tu dispositivo KNULLI con frecuencia, puedes incluso asignarle una letra de unidad para que aparezca en *Este PC*. De esta manera, podrás ver cuánto espacio te queda libre en la tarjeta SD.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/004-smb-map-network-drive.png">
			<p><strong>Paso 1: </strong>Haz clic con el botón derecho en la carpeta <code>share</code> en el <em>Explorador de Windows</em> y selecciona <em>Conectar unidad de red...</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/005-smb-map-network-drive.png">
	    	<p><strong>Paso 2: </strong>Asigna una letra a la unidad y confirma.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/006-smb-map-network-drive.png">
			<p><strong>Paso 3: </strong>Busca tu carpeta <code>share</code> de KNULLI como una unidad de red en <em>Este PC</em> en el <em>Explorador de Windows</em>.</p>
		</td>
	</tr>
</table>

!!! danger "Solución de problemas."

	- El nombre del dispositivo corresponde al **hostname** configurado en tu dispositivo KNULLI. Si `KNULLI` no funciona, verifica el **hostname** actual en la *Configuración de Red* de tu dispositivo KNULLI. También puedes usar la **dirección IP** de tu dispositivo escribiéndola directamente en la barra de direcciones.
	- Si se tienen configuradas medidas de seguridad adicionales, se te solicitarán tus credenciales.
		- El nombre de usuario esperado es `root` y la contraseña es la **contraseña de root** que se muestra en la sección *Seguridad* de *Ajustes del Sistema*.
    
#### macOS

- Abre Finder, selecciona *Ir* y luego *Conectarse a un Servidor* en el menú superior.
- En la barra de direcciones que aparece, escribe `smb://[HOSTNAME]` o `smb://[DIRECCION-IP]` (reemplaza `[HOSTNAME]` por el hostname o `[DIRECCION-IP]` por la dirección IP de tu dispositivo).
- Si se tienen configuradas medidas de seguridad adicionales, se te solicitarán tus credenciales.
		- El nombre de usuario esperado es `root` y la contraseña es la **contraseña de root** que se muestra en la sección *Seguridad* de *Ajustes del Sistema*.

### SCP/FTP

Usando el programa SCP/FTP que prefieras, configura una conexión SCP/SFTP a la dirección IP de tu dispositivo KNULLI. Necesitarás el hostname o la dirección IP del dispositivo (el hostname predeterminado es `KNULLI`). Asegúrate de que el puerto esté configurado en `22`. El nombre de usuario esperado es `root` y la contraseña esperada es la *contraseña de root* que encontrarás en la sección *Seguridad* de *Ajustes del Sistema* (la contraseña predeterminada es `linux`).

!!! info "Algunas partes de KNULLI son de solo lectura."

	A diferencia de la transferencia de archivos *SMB*, SCP/FTP proporciona acceso a **todo** el sistema de archivos de KNULLI, no solo a la carpeta `/userdata`. Sin embargo, **todo lo que esté fuera** de la carpeta `/userdata` es de **solo lectura**: **puedes** editar, cambiar, eliminar y borrar archivos, pero los cambios se **revertirán** cada vez que **reinicies**.

	Si deseas hacer cambios persistentes fuera de la carpeta `/userdata`, consulta la sección [Parchar y Sobreescribir](../../../configure/patches-and-overlays).

Para usuarios de Windows, recomendamos usar [WinSCP](https://winscp.net). Después de instalar WinSCP en tu computadora con Windows, sigue estos pasos para establecer una conexión SCP con tu dispositivo KNULLI, donde podrás arrastrar y soltar o copiar/pegar archivos directamente desde el *Explorador de Windows*:

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-001.png">
			<p><strong>Paso 1: </strong>Crea una nueva conexión <em>New Site</em> con la siguiente información y da click en <em>Login</em>.<p>
			<table>
				<tr>
					<th>File protocol:</th>
					<td>SCP</td>
				</tr>
				<tr>
					<th>Host name:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>Port number:</th>
					<td><code>22</code></td>
				</tr>
				<tr>
					<th>User name:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><code>linux</code></td>
				</tr>
			</table>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-002.png">
	    	<p><strong>Paso 2: </strong><em>Acepta</em> las claves del sitio.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-003.png">
			<p><strong>Paso 3: </strong>Ignora cualquier advertencia acerca de la expiración de la contraseña y da click en <em>Continue</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-004.png">
			<p><strong>Paso 4: </strong>Has establecido una conexión exitosa con tu dispositivo KNULLI. <strong>No te asustes</strong> si no ves todas las carpetas de inmediato. Selecciona una carpeta (por ejemplo, <em>userdata</em>) en el árbol de carpetas a la izquierda de la ventana para ver su contenido.</p>
		</td>
	</tr>
</table>

### HTTP

!!! warning "Esta sección aún está en construcción."

	¡Lo sentimos, estamos trabajando en ello! :smile: Mientras tanto, te recomendamos unirte a nuestro [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) para contactarnos. ¡Quizás podamos ayudarte ahí!

### Después de transferir tus datos

Una vez transferidos los datos, asegúrate de actualizar tus listas de juegos para que estén disponibles. Para ello, presiona ++"Start"++ para abrir el menú principal, luego abre *Ajustes de Juegos* y selecciona *Actualizar Listas de Juegos*. KNULLI volverá a escanear todas las carpetas de juegos e identificará todos los juegos que has añadido para que estén disponibles en EmulationStation.
