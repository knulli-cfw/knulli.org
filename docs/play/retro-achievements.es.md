# :fontawesome-solid-medal: Retro Achievements

KNULLI se integra de forma nativa con [RetroAchievements](https://retroachievements.org/), lo que te permite conseguir logros mientras juegas en numerosos emuladores. Para usar RetroAchievements, tu dispositivo debe estar conectado a internet.

## Configuración

- Crea una cuenta en [RetroAchievements.org](https://retroachievements.org/).
- Sigue los pasos de la sección de [Redes](../configure/networking.md) para conectar tu dispositivo a internet.
- En EmulationStation, presiona ++"START"++ en el control para abrir el menú principal.
- Selecciona *Ajustes de Juegos* y luego *Ajustes de RetroAchievements*.
- Activa *RetroAchievements (Trofeos)* (primera opción).
- A continuación, introduce tus credenciales de RetroAchievements.org:
    - **Usuario**
    - **Contraseña**
    - **API key**

!!! info "Añadir tu clave para la API."

    **Sin** una clave API, podrás **conseguir** RetroAchievements mientras juegas. Sin embargo, solo añadiendo tu **clave para la API** accederás a un menú **adicional** con un **resumen** de todos tus RetroAchievements conseguidos (y los que aún no has conseguido).

    Por lo tanto, añadir una clave para la API es **opcional**.

    Encontrarás tu clave para la API iniciando sesión en [RetroAchievements.org](https://retroachievements.org/)  y navegando a la página de [*Settings*](https://retroachievements.org/settings). Desplázate hasta la sección *Keys* para encontrar tu **Web-API-Key** de **forma abreviada**. Sin embargo, **esta forma abreviada no funcionará como una clave API válida para KNULLI**.

    Para ver la clave para la API **completa**, cópiala desde el navegador (por ejemplo, a un editor de texto). Una vez que hayas visto la clave API **completa**, introdúcela en los *Ajustes de RetroAchievements* de tu dispositivo KNULLI. Tras volver a abrir el menú principal, deberías encontrar la sección *Retroachievements* en el menú principal o dentro del menú *Opciones del Juego*, según tu configuración.
    
    Para cambiar la ubicación de la sección *Retroachievements*, presiona ++"Start"++ para abrir el menú principal, ve a *Ajustes de Juegos* y busca *Ajustes de RetroAchievements*. Aquí puedes activar o desactivar la opción *Activar en el Menú Principal*.

### Cambios a través de SSH / FTP

Es posible agregar estos datos a través de la red mediante SSH o FTP. Para comenzar, consulta la sección [SSH](../configure/ssh.md) o [Using FTP/SCP](./add-games/network-transfer.md).

Cuando tengas una conexión establecida, deberás abrir el archivo de configuración de Batocera en un editor de texto: `/userdata/system/batocera.conf`

En este archivo, puedes configurar las siguientes opciones. Los valores se almacenan en texto plano y no requieren comillas.

```
global.retroachievements.username=
global.retroachievements.password=
global.retroachievements.webapikey=
```

Por ejemplo, para configurar una contraseña, sería:

`global.retroachievements.password=This1sN0tSecure`

Una vez realizados estos cambios, puedes guardarlos y salir del editor de texto.

Deberás reiniciar tu dispositivo para que se aplique la configuración.

## Notas adicionales

- Hay ajustes adicionales que puedes modificar en el menú superior para personalizar tu experiencia. Consulta la documentación @ [docs.retroachievements.org](https://docs.retroachievements.org/) para obtener más información sobre cada opción.
- Ajustes recomendados:
    - Sonido de desbloqueo (++"On"++): reproduce el sonido de desbloqueo clásico cada vez que se consigue un logro.
    - Captura de pantalla automática (++"On"++): toma una captura de pantalla cada vez que se consigue un logro y la guarda en el directorio de capturas de pantalla. Puedes verlas en el sistema de capturas de pantalla de EmulationStation.
- No todos los emuladores y juegos son compatibles con RetroAchievements; consulta la lista de emuladores compatibles con logros [aquí](https://docs.retroachievements.org/Emulator-Support-and-Issues/) y comprueba si tu juego tiene logros disponibles buscándolo en RetroAchievements.org.
