#  :material-folder-refresh: Reinicio de Fábrica

Desde KNULLI Gladiator II, KNULLI incluye una función de reinicio de fábrica integrada en EmulationStation (la interfaz gráfica de usuario de KNULLI). Si necesitas reiniciar la configuración, pero no quieres transferir todos tus juegos y archivos de BIOS nuevamente, esta opción es para ti. Mantendrá tu **instalación existente de PortMaster** automáticamente.

Además, puedes realizar un reinicio manual, por ejemplo, si la interfaz gráfica de usuario ya no se puede iniciar. Sin embargo, este **reinicio manual no mantiene tu instalación existente de PortMaster**. En su lugar, las instrucciones te indicarán cómo volver a un estado en el que el instalador de PortMaster esté disponible.

## Reinicio de Fábrica desde EmulationStation

Para restablecer la configuración de fábrica desde la interfaz gráfica de KNULLI:

* Presiona ++"Start"++ para abrir el menú principal.
* Ve a *Ajustes del Dispositivo*.
* Selecciona *Restablecer Valores de Fábrica*.
* Confirma que realmente quieres restablecer.

## Reinicio de Fábrica manual

!!! danger "Recrear la carpeta completa `system`."

     **Normalmente**, las actualizaciones de KNULLI **NO** requieren que vuelvas a crear la carpeta `system` completa. Recrear la carpeta `system` equivale a **restablecer la configuración de fábrica**. Por lo tanto, te obligará a **reconfigurar manualmente muchos ajustes**, ¡ya que desaparecerán después! **NO** lo hagas a menos que estés completamente seguro de que es necesario.

Como ya sabrás, **todas tus configuraciones** se almacenan en tu carpeta `userdata/system`, como se explica en la sección [Almacenamiento de los Juegos](../../play/add-games/game-storage).

Si tu sistema no funciona correctamente después de cambiar una configuración y no encuentras la manera de deshacerla, el problema podría solucionarse restableciendo el archivo de configuración correspondiente o toda la carpeta `system` a la configuración de fábrica. En **casos MUY excepcionales**, también podría ser necesario adaptar tu configuración a los nuevos valores predeterminados de KNULLI **reemplazando o actualizando algunos archivos** en esa carpeta `system` después de instalar una actualización.

La forma más sencilla de lograrlo es simplemente **eliminar** los archivos correspondientes **o** toda la carpeta. Durante el siguiente arranque, KNULLI reemplazará todos los archivos faltantes con nuevos archivos que contengan la configuración predeterminada.

### Respalda tu configuración actual

Si deseas o necesitas volver a crear un archivo de configuración (o la carpeta `system` completa) con la configuración predeterminada, accede a la carpeta `userdata` de la misma manera que siempre. También puedes usar el *OD-Commander* integrado en la categoría *Ports*. En cualquier caso, te **recomendamos mucho** que **renombres** la carpeta `system` **o** los archivos que deseas reemplazar añadiendo un sufijo como `.bak` (por ejemplo, renombra `system` a `system.bak`). De esta forma, podrás restaurar la configuración anterior por completo o seleccionar manualmente archivos o líneas individuales de tu configuración anterior.

#### Renombrar archivos/carpetas con OD-Commander

* Ve a la categoría de *Ports*.
* Busca e inicia *OD-Commander*.
* Deberías ver el contenido de tu carpeta `userdata` a la izquierda, indicado con el título `/userdata`. Si aún no lo has visto, navega hasta /userdata usando las flechas arriba/abajo del D-pad y los botones Aceptar/Atrás para entrar o salir de una carpeta.
* Localiza la carpeta `system` a la izquierda de la pantalla.
* Con la carpeta `system` seleccionada
     * **puedes** acceder a ella y localizar los archivos o subcarpetas que quieras recrear
     * **o** bien, quedarte ahí si quieres recrear toda la carpeta `system`.
* Una vez que hayas seleccionado el archivo o la carpeta que quieras recrear
     * Presiona ++"X"++ para abrir el menú archivo.
     * Selecciona "Cambiar nombre".
     * Usa el teclado en pantalla para renombrar el archivo o la carpeta.

#### Volver a crear tus archivos de configuración

Después, reinicia tu dispositivo KNULLI. Se volverán a crear los archivos y carpetas faltantes a partir de los valores predeterminados de KNULLI. Ahora, puedes reconfigurar todos tus ajustes a través de la interfaz gráfica de EmulationStation o seleccionar manualmente los detalles de configuración comparando tu configuración anterior (`.bak`) con la nueva.
