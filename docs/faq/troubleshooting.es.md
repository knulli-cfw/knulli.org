# :material-frequently-asked-questions: Solución de Problemas

### P: ¿Puedo usar una segunda tarjeta SD para mis ROMs/BIOS?

R: ¡Sí! Consulta la sección [Segunda Tarjeta SD](../../play/add-games/second-sd-card).

---

### P: Me gustaría probar muOS y KNULLI. ¿Es posible usar la misma segunda tarjeta SD para ambos firmwares personalizados y compartir mis juegos?

R: KNULLI requiere que todas las ROMs estén en las subcarpetas correspondientes del sistema emulado; por ejemplo, `roms/snes` para las ROMs de SNES. Si usas tu tarjeta SD con la estructura de KNULLI (consulta la sección [Añadir Juegos](../../play/add-games) para más detalles), podrás configurar tu muOS para que tome las ROMs de estas carpetas, lo que te permitirá usar la misma segunda tarjeta SD para tus ROMs en ambos firmwares personalizados.

---

### P: Tengo Garlic con mis ROMs/BIOS en la segunda tarjeta SD. ¿Es posible reutilizar esa tarjeta para KNULLI?

R: Por defecto, KNULLI espera un nombre diferente para las carpetas de las ROMs y su ubicación, pero gracias a @XQuader hay un script que crea una configuración compatible para KNULLI basándose en la estructura de Garlic. Puedes leer más sobre esto en [este post de Reddit](https://www.reddit.com/r/RG35XX/comments/12zxs8t/how_to_get_garlicos_roms_folders_working_in/).

---

### P: La instalación parece estar ejecutándose; veo que está expandiendo la partición, pero tarda demasiado.

R: Expandir e iniciar por primera vez con una tarjeta SD de 64GB tarda entre 1 y 1:30 minutos. Si tu tarjeta SD es más grande, puede tardar mucho más; sin embargo, si tarda más de 5 minutos, es probable que algo no haya salido bien. Sólo presiona reiniciar y el sistema continuará. En ese caso, es posible que la partición no se haya expandido. Para ello, tendrás que expandir la tarjeta manualmente en tu PC/Mac/Linux.

---

### P: No puedo conectarme a mi Wi-Fi aunque mi dispositivo tenga un adaptador de red inalámbrica. ¿Qué puedo hacer?

R: Algunos usuarios han experimentado problemas al conectar su dispositivo a una **red Wi-Fi con protección WPA2+WPA3**. KNULLI actualmente **no es compatible** con redes WPA2+WPA3, por lo que recomendamos reducir las medidas de seguridad y cambiar su Wi-Fi a WPA1+WPA2 si es posible.

Sin embargo, KNULLI Firefly incluye un nuevo **servicio experimental** que podría permitirte conectarte a tu Wi-Fi con protección WPA2+WPA3 de todos modos. Si tienes problemas para conectarte a tu Wi-Fi, intenta activar el servicio. Presiona ++"Start"++ para abrir el menú principal, ve a *Ajustes del Sistema*, luego a *Servicios* y activa *WIRELESS_HYBRID_FIX*. Ten en cuenta que esta función es **experimental**.

---

### P: He instalado o actualizado a la última versión y no tengo audio, mis controles no responden o algo no funciona correctamente. ¿Qué puedo hacer?

R: Quizás quieras intentar restablecer tu dispositivo a la configuración de fábrica. Consulta nuestra guía sobre [Reinicio de Fábrica](../../configure/reset-to-factory-settings).

---

### P: ¿Por qué la configuración de RetroArch se restablece siempre al iniciar un juego?

R: No deberías realizar cambios directamente en RetroArch. Las opciones más relevantes para cada emulador o núcleo de RetroArch se pueden configurar en EmulationStation, ya sea globalmente, por sistema o incluso por juego. El archivo de configuración de RetroArch se **genera** de nuevo cada vez que se inicia un juego, según la configuración que se haya realizado globalmente o para el sistema/juego específico en **EmulationStation**. Por eso, todos los cambios que realices mientras juegas se sobrescribirán la próxima vez que inicies un juego, excepto los archivos de **sobreescritura** y el **remapeo de controles**.

Configura tus emuladores en EmulationStation. Si no encuentras alguna opción del emulador en EmulationStation que te parezca relevante, contáctanos y exponla. Quizás podamos ayudarte a identificar esta opción del emulador en una configuración de EmulationStation o, al menos, explicarte por qué creemos que esta opción no debería ser configurada por el usuario.

---

### P: ¿Por qué no funcionan los marcos en mi dispositivo con KNULLI?

R: La mayoría de los marcos están diseñadas para pantallas con una relación de aspecto de 16:9. Por lo tanto, estos marcos no funcionan en una pantalla 4:3 (como la de la Anbernic RG35XX H/Plus/SP). Para que funcionen, busca un paquete de marcos para pantallas 4:3. Encontrarás una explicación detallada (y un link a marcos compatibles con 4:3) en la sección [Marcos](../../configure/customization/bezel-decorations).

---

### P: Tengo problemas con la batería de mi dispositivo Anbernic de la serie RG35XX/RG40XX Plus/SP/2024/H/V. Parece que la batería se descarga más rápido con Knulli que con el sistema operativo original, ¡incluso en modo de suspensión o completamente apagado!

!!! danger "Lee esto antes de reportar problemas con la batería."
    Por las razones que se explican a continuación, **no es útil** reportar problemas con la batería basándose en el **porcentaje mostrado en pantalla**. Decir que la batería perdió el 10% mientras el dispositivo estaba apagado **no sirve de nada**, ya que **es imposible saber** si esa cifra es correcta.
    Actualmente, **la única** forma válida de investigar los problemas con la batería con KNULLI es observar el **LED indicador de energía** del dispositivo y medir el tiempo que tarda en descargarse por completo. Por ejemplo, para verificar la eficiencia del modo de suspensión, **carga tu dispositivo completamente**, ponlo en modo de suspensión y ve cuánto tarda en **descargarse por completo**.

R: Hasta donde sabemos, no hay diferencia en la eficiencia de los modos de suspensión entre KNULLI y la **versión inicial** del sistema operativo original de Anbernic. Sin embargo, los experimentos indican que el modo de suspensión **mejorado** del sistema operativo original funciona **mejor** que el modo de suspensión proporcionado por KNULLI. Dado que Anbernic no publica su código fuente, nuestros desarrolladores aún están examinando el sistema operativo original para determinar qué cambios implementaron para mejorar aún más su modo de suspensión. Hasta que lo resolvamos, KNULLI solo ofrecerá el modo de suspensión normal, que consume aproximadamente un 5% de la batería por hora.

Si percibes que tu dispositivo se descarga demasiado rápido, existen varios factores que podrían estar influyendo:

* El **indicador de batería** de **Emulation Station** (el frontend de KNULLI) presenta un **error** que a veces provoca que se **bloquee**. Es un **problema conocido** en el que se está trabajando. Sin embargo, hasta que se solucione, **no puedes confiar** en la **precisión** del **porcentaje de batería** mostrado. Reiniciar el dispositivo o actualizar las listas de juegos podría solucionar el problema temporalmente; sin embargo, puede volver a ocurrir.

* El porcentaje de batería que se puede leer desde los **controladores de la batería** a veces da lecturas inexactas. Nuestros desarrolladores han observado que, en ocasiones, el porcentaje de batería que se informa directamente desde la batería presenta saltos bastante pronunciados, por ejemplo, del 93% al 100% durante la carga. Por lo tanto, incluso si el indicador de batería **no** se bloquea, el porcentaje de batería mostrado podría ser **ligeramente inexacto**.

* El **modo de suspensión** estándar que ofrece el kernel para los dispositivos Anbernic de esa serie es muy **ineficiente**, especialmente en comparación con los smartphones modernos o dispositivos similares:

    * Éste aplica una **suspensión simple a la RAM**, lo que significa que muchos componentes del dispositivo se apagan, pero el estado completo del dispositivo se guarda en la RAM (memoria de acceso aleatorio, Random Access Memory en inglés). Por lo tanto, el dispositivo seguirá necesitando energía para mantener la RAM activa.

    * Los dispositivos Anbernic de esa serie consumen mucha energía para mantener la RAM en modo de suspensión, por lo que se podría notar una **descarga** de aproximadamente el **5% por hora**, lo que impide poner el dispositivo en suspensión indefinidamente.

    * El **modo de suspensión mejorado** parece ahorrar más energía; sin embargo, aún desconocemos cómo se logra.

    * Se podría lograr una gestión de energía más eficiente implementando la **suspensión en disco**, que guardaría el estado del dispositivo en una **memoria persistente**, como un disco duro o una tarjeta SD. El dispositivo podría **apagarse por completo**, ahorrando así mucha más batería. Sin embargo, el kernel personalizado proporcionado por Anbernic para los dispositivos de esa serie solo permite la **suspensión a RAM**. No podremos implementar la **suspensión a disco** hasta que los dispositivos Anbernic de esa serie sean compatibles con el kernel principal de Linux.

* Es posible que la batería **se descargue un poco** incluso con el dispositivo completamente **apagado**. Podría ser un **mecanismo de autoconservación** integrado en la batería para evitar que permanezca cargada al 100 % durante demasiado tiempo.

* Si observas que tu dispositivo agota toda la batería en un día o menos, a pesar de estar apagado, lo más probable es que **no** estuviera apagado, sino en **modo de suspensión**.

---

### P: Estoy intentando ejecutar KNULLI en mi RG35XX SP, pero solo veo algunas líneas distorsionadas en la pantalla. ¿Qué puedo hacer para solucionarlo?

R: No hay nada que pueda hacer. Tu dispositivo es una nueva versión del RG35XX SP con una pantalla que aún no es compatible con KNULLI. Ya hemos identificado el problema y estamos trabajando en una solución. Si todo va según lo previsto, tu dispositivo será totalmente compatible con la próxima versión de KNULLI.