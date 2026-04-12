# :material-image-plus: Scraping

Una vez que hayas añadido todos tus juegos a tu dispositivo KNULLI, quizás quieras añadir carátulas y otros metadatos. Claro que siempre puedes editar manualmente los archivos `gamelist.xml` y completar todos los metadatos. Sin embargo, KNULLI permite extraer automáticamente contenido multimedia y metadatos de tres fuentes diferentes: [ScreenScraper](https://www.screenscraper.fr), [TheGamesDB](https://thegamesdb.net) y [ArcadeDB](http://adb.arcadeitalia.net).

!!! info "Los nombres de archivo de las ROMs importan."

    El scraper integrado busca contenido multimedia y metadatos para tus juegos basándose en los nombres de archivo de las ROMs (o scripts de ejecución para ports). Si los nombres de archivo contienen información regional (como `(U)` o `(EU)`), el scraper la tendrá en cuenta. Asegúrate de que las ROMs y los scripts tengan el nombre correcto; de lo contrario, el scraper no podrá identificar el juego. Si no puedes proporcionar un nombre legible para tu juego, ya que algunos sistemas requieren nombres específicos para los scripts (p. ej., ScummVM), no te preocupes: puedes extraer los datos de esos juegos manualmente.

## Visualizar el contenido multimedia extraído

KNULLI utiliza [Art-Book-Next](https://github.com/anthonycaccese/art-book-next-es) como tema predeterminado para la interfaz gráfica de EmulationStation. Este tema permite mostrar una gran cantidad de metadatos y contenido multimedia que puedes extraer de las fuentes de extracción compatibles.

El tema muestra:

- En la lista de juegos del sistema correspondiente:
    - Ya sea el *boxart* o *image* como carátula del juego.
        - Presiona el botón ++"Start"++ y ve a la sección *Ajustes del Tema* en *Ajustes de la Interfaz de Usuario* para activar o desactivar la función de contenido multimedia.
    - Un vídeo extraído para previsualizar una partida en la lista de juegos.
    - La descripción del juego.
    - La valoración de la comunidad.
    - La fecha de lanzamiento.
- En el menú del juego (mantén presionado el botón que inicia el juego para abrirlo):
    - El logotipo del juego.
    - El manual del juego.
    - Otros contenidos multimedia extraídos del juego como galería.

!!! info "El contenido multimedia mostrado puede variar entre temas."

    Si cambias de tema, es posible que no puedas mostrar el mismo contenido multimedia. Si el contenido multimedia extraído no se muestra correctamente en un tema instalado manualmente, consulta la documentación del tema para obtener ayuda.

## Usar el contenido multimedia de otro dispositivo basado en EmulationStation

Si ya tienes otro dispositivo con EmulationStation como interfaz, quizás quieras transferir todo el contenido multimedia extraído junto con tus juegos. Si lo haces, asegúrate de incluir todas las subcarpetas de dicho contenido **y** el archivo `gamelist.xml` de cada sistema. Los archivos gamelist contienen referencias al contenido multimedia extraído; sin ellas, no se mostrará.

Por ejemplo, si quieres migrar tus ROMs de SNES con todo el contenido multimedia extraído incluido, asegúrate de transferir toda la carpeta `roms/snes` de tu dispositivo anterior a la carpeta `roms/snes` de tu dispositivo KNULLI. Asegúrate de reemplazar el archivo `gamelist.xml` existente en el dispositivo KNULLI por el de tu dispositivo anterior.

Si el contenido multimedia extraído no aparece, presiona el botón ++"Start"++ para abrir el menú principal, ve a *Ajustes de Juegos* y selecciona *Actualizar Listas de Juegos*. Después, deberías ver que el contenido multimedia y los metadatos del juego se muestran correctamente. Si esto no funciona, es posible que el contenido multimedia previamente extraído (o los archivos de la lista de juegos correspondiente) no sea compatible con la versión de EmulationStation o el tema que usa KNULLI. En ese caso, podrías volver a extraer el contenido multimedia directamente con el programa integrado de KNULLI.

## Extraer contenido multimedia

Para extraer contenido multimedia de cualquiera de las fuentes compatibles con KNULLI, existen dos opciones. Puedes extraer contenido multimedia de toda tu colección (o de partes de ella) o de un solo juego. Pero antes de extraer, asegúrate de que la configuración de tu extractor sea la que quieres.

!!! info "Límite de scraping."

    Algunas fuentes de scraping tienen un límite en la cantidad de datos/medios que se pueden scrapear por día. Asegúrese de evitar scraping innecesario configurando su scraper correctamente antes de empezar.

#### Configuración del scraper

Para configurar el scraper, presiona ++"Start"++ para acceder al menú principal y selecciona "Escrapear (Obtener Info de Juegos)" para abrir el menú. En este menú, puedes configurar la fuente principal del scraper. Esta es la fuente que se usará siempre al scrapear varios juegos (o incluso todos) a la vez. ScreenScraper estará seleccionado por defecto. Sin embargo, puedes cambiar la fuente a TheGamesDB o ArcadeDB si lo prefieres.

!!! info "Cuenta de ScreenScraper."

    ScreenScraper requiere que el usuario inicie sesión en una cuenta de ScreenScraper. Si deseas extraer datos desde ScreenScraper, visita el sitio web de [ScreenScraper](https://www.screenscraper.fr) y regístrate. (¡Es gratis!)

En *Ajustes de Escrapeo*, puedes introducir tus credenciales de inicio de sesión de ScreenScraper y elegir qué datos extraer. La opción *Tipo de Caja* te permite elegir el tipo de carátula que quieres para tu colección (por ejemplo, carátula 2D o 3D). *Tipo de Logo* te permite elegir entre diferentes tipos de logotipos (*Logo del Juego* corresponde al logotipo del juego sobre un fondo transparente sin decoraciones adicionales; las demás opciones son variantes estilizadas del logotipo).

También puedes elegir una *Región Preferida*, ya que muchos juegos se han publicado en todo el mundo y la carátula puede variar según la región.

Con los botones *Sobrescribir Descripciones* y *Sobrescribir Medios*, puedes proteger los datos que ya has extraído o incluso editados manualmente.

Además de estas opciones, hay muchos botones para diferentes tipos de metadatos, como vídeo, valoración de la comunidad e incluso el manual del juego. Tómate tu tiempo para configurar tus preferencias de extracción y prueba con un solo juego antes de extraer toda tu colección.

### Extraer contenido multimedia para un solo juego

Una vez configurada la herramienta de scraping, puedes probarla extrayendo datos y contenido multimedia de un solo juego. Elige un juego, cualquiera (preferiblemente uno conocido, para asegurarte de que haya datos y contenido multimedia disponibles). Ve a la categoría del sistema (p. ej., SNES) y selecciona un juego (p. ej., "Super Mario World"). Ahora, según la configuración de tu interfaz, el Botón Sur (:material-gamepad-circle-down:) o el Botón Este (:material-gamepad-circle-right:) iniciarán el juego. **Mantén** presionado el botón que inicia tus juegos para abrir el menú del juego.

En la parte inferior del menú del juego, encontrarás la opción *Escrapear Juego*. Si la seleccionas, KNULLI intentará encontrar metadatos y contenido multimedia para ese juego. A diferencia del scraping masivo de varios juegos, el scraping de un solo juego obtendrá información de **todas** las fuentes disponibles. Una vez recibidos los datos, la herramienta ofrecerá al usuario una selección, ordenada por la fuente de scraping.

Si el scraper no encuentra resultados (por ejemplo, porque estás buscando para un script de inicio de un port con un nombre extraño), puedes intentar encontrar el juego correcto manualmente. En la parte inferior de la pantalla del scraper, encontrarás la opción *Buscar por Texto*. Selecciónala e introduce el nombre del juego del que quieres scraper contenido multimedia.

!!! info "Juegos con nombres diferentes por región."

    Algunos juegos tienen nombres diferentes en distintas regiones. Por ejemplo, "Broken Sword" se llama "Baphomet's Fluch" en Alemania. Si el scraper no encuentra el juego por su nombre regional, busca por el nombre internacional.

Después de seleccionar el resultado de scraping preferido, la pantalla del scraper se cerrará. Si aún no ves la información scrapeada, quizás debas actualizar tus listas de juegos. Presiona el botón ++"Start"++ para abrir el menú principal, ve a *Ajustes de Juegos* y selecciona *Actualizar Listas de Juegos*. Después, deberías ver que los archivos multimedia y los metadatos del juego se muestran correctamente.

### Extraer contenido multimedia para todos los juegos

Al configurar tu dispositivo KNULLI por primera vez, probablemente querrás extraer datos multimedia de todos tus juegos a la vez. Una vez que te hayas asegurado de que la configuración del extractor es la adecuada y lo hayas verificado extrayendo datos de un solo juego, estarás listo para el scraping masivo. Ten en cuenta que el scraping masivo puede tardar bastante tiempo, dependiendo del tamaño de tu colección de juegos.

Para iniciar el scraping masivo, presiona el botón ++"Start"++ para abrir el menú principal y dirígete a *Escrapear (Obtener Info de Juegos)*. En la sección *Filtros* podrás configurar los juegos de los que quieres extraer datos y multimedia. Puedes seleccionar u omitir ciertos sistemas o excluir juegos que se hayan escrapeado recientemente. Después de configurar los filtros, selecciona *Iniciar Escrapeo* en la parte inferior de la pantalla.

KNULLI comenzará a extraer datos. Puedes salir del menú, ya que KNULLI continuará extrayendo datos en segundo plano. En EmulationStation, podrás supervisar el proceso de scraping en la esquina superior derecha de la pantalla. El scraping continuará, incluso mientras juegas. Sin embargo, dado que el scraping es una operación que consume mucho tiempo y energía, es posible que no quieras jugar a juegos que consuman muchos recursos mientras se ejecuta en segundo plano.

Una vez finalizado el scraping, es posible que tengas que actualizar las listas de juegos para aplicar los cambios. Presiona el botón ++"Start"++ para abrir el menú principal, ve a *Ajustes de Juegos* y selecciona *Actualizar Listas de Juegos*.

Todos tus juegos tendrán la carátula, las descripciones y los vídeos deseados. Si observas que a un juego aún le faltan archivos multimedia o metadatos (o que los tiene incorrectos), puedes intentar scrapear de nuevo para ese juego específico, como se describe en la sección [Extraer contenido multimedia para un solo juego](#extraer-contenido-multimedia-para-un-solo-juego).
