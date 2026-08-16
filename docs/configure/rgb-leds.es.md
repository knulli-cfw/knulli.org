# :material-lightbulb-on-outline: LEDs RGB

KNULLI es compatible con los LEDs RGB de ciertos dispositivos (por ejemplo, los dispositivos RG40XX H/V de Anbernic). Por defecto, los LEDs RGB se iluminan en un tono verde que combina con nuestro logotipo de KNULLI. Sin embargo, ¡puedes personalizarlos a tu gusto!

Además, puedes configurar los LEDs RGB para que indiquen batería baja y/o cargando, e incluso para que reproduzcan una animación al conseguir un logro retro.

!!! warning "Antes de reportar problemas, ten en cuenta el estado de tu batería."

    Algunos dispositivos incorporan mecanismos para desactivar completamente la iluminación RGB cuando el porcentaje de batería cae por debajo de un cierto valor. En estos dispositivos, la indicación de batería mediante RGB no funcionará. Por lo tanto, si tu dispositivo desactiva la iluminación RGB por completo en lugar de mostrar una animación de advertencia, no te preocupes: probablemente se trate de una función específica del dispositivo fuera del alcance de nuestra implementación de RGB. (Véase también: [BatteryPlus](./batteryplus.md)).

    Además, ten en cuenta que mientras tu dispositivo esté en modo de indicación de batería (cargando, aviso de batería baja), este modo anulará la configuración manual. Por lo tanto, si configuras un modo y un color y la configuración no se guarda, asegúrate de que no se haya anulado simplemente porque el dispositivo esté en modo de carga o de batería baja.

## Configuración de LEDs RGB

Si tu dispositivo tiene LEDs RGB y tu versión de KNULLI los admite, encontrarás la configuración *RGB LED Settings* en el menú de *Device Settings*.

* Presiona ++"START"++ para abrir el menú principal.
* Ve a *Device Settings*.
* Ve a *RGB LED Settings*.

Las opciones que encontrarás en este menú dependen de tu dispositivo y de tu versión de KNULLI.

### Enable RGB LED

Este sencillo interruptor te permite encender o apagar los LEDs RGB por completo.

### LED Mode and Color

Esta sección incluye las opciones para el comportamiento RGB **habitual**. La configuración se aplica cuando el dispositivo **no** está en modo de batería baja ni cargando.

* **Modo** define el tipo de animación que muestran los LEDs RGB la mayor parte del tiempo. Las opciones disponibles dependen de tu dispositivo:
    * *No Effect* apaga los LEDs RGB a menos que el dispositivo esté en modo de batería baja, cargando o hayas conseguido un logro retro.
    * *Static* muestra una luz constante en el color principal.
    * *Shimmer* es la configuración predeterminada y muestra una luz constante en el color principal y un efecto de brillo en el color secundario.
    * *Rainbow* crea un efecto de arcoíris "en movimiento".
    * *Single Rainbow* cambia gradualmente de un color aleatorio a otro, creando una animación constante de arcoíris de un solo color.
    * *Input Pulse* muestra una luz constante en el color principal y resalta la dirección actual del joystick en el color secundario.
    * *Wave* muestra una luz constante en el color principal y un efecto de onda en el color secundario.
    * *Knight Rider* mueve una luz roja de izquierda a derecha y viceversa para recordarles a todos su coche favorito.

* **Color Palette** te ofrece una gran variedad de paletas de 2 colores para elegir, cada una con un color primario y uno secundario. La configuración predeterminada es *KNULLI*.
* **Primary Color** te permite elegir tu color primario (al cambiarlo manualmente, la opción *Color Palette* pasará a ser *Custom*).
* **Secondary Color** te permite eligir tu color secundario (al cambiarlo manualmente, la opción *Color Palette* pasará a ser *Custom*).
* **Invert Colors (Secondary Zone)** invierte los colores primario y secundario en la zona secundaria de tu dispositivo (si la tiene).
* **Palette Mod** añade otro efecto por encima del modo elegido (si es posible).
* **Brightness** ajusta el brillo *relativo* de los LEDs RGB. Cuanto mayor sea el valor, más brillantes serán los LEDs RGB. Si *Adaptive Brightness* está *desactivado*, el 100% de brillo corresponde al brillo máximo posible de los LEDs RGB. Si *Adaptive Brightness* está *activado*, el 100% de brillo corresponde al 100% del *brillo actual de la pantalla*.
* **Adaptive Brightness** ajusta automáticamente el brillo de los LEDs cuando se aumenta o disminuye el brillo de la pantalla. Se puede *activar* y *desactivar*.

### Battery Charge Indication

Esta sección permite configurar los LEDs RGB para indicar el nivel de la batería.

* **Low Battery Threshold** establece el límite para la indicación de batería baja. Si la carga de la batería está por debajo de este valor, los LEDs RGB cambiarán al modo de indicación de batería baja. Si el valor se establece en 0, la indicación de batería baja se desactivará.
    * Cuando la batería esté muy baja (5 % o menos), el color de los LEDs RGB será rojo.
    * Cuando la batería esté baja (por debajo del valor pero por encima del 5 %), el color de los LEDs RGB será amarillo.
* **Low Battery Indication** permite seleccionar el tipo de indicación de batería baja (*ninguno*, *notification* o *continuous* (predeterminado)).
* **Battery Charging Indication** permite seleccionar el tipo de indicación de carga de batería (*ninguno*, *notification* o *continuous* (predeterminado)).

### Retro Achievement Indication

* **Achievement Effect** reproduce un breve efecto RGB cada vez que se obtiene un RetroAchievement. Se puede *activar* y *desactivar*.
