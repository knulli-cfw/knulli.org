# :material-battery-charging-60: BatteryPlus

Grandioso Scott! 1.21 Gigawatts!!

BatteryPlus es un sistema de porcentaje de batería basado en voltaje. En lugar de confiar en los valores reportados por el PMIC, que suelen ser imprecisos, calcula el porcentaje de batería directamente a partir del voltaje medido.

Resultado:

* Comportamiento consistente en todos los dispositivos.
* Sin saltos ni reinicios aleatorios.
* El porcentaje refleja la posición real en la curva de voltaje.

!!! info "PMIC vs voltaje."

    Dependiendo del dispositivo y su batería, los valores reportados por el PMIC a veces son imprecisos. Por lo tanto, el porcentaje de batería a veces parece "fluctuante" o excesivamente conservador. Por ejemplo, en los dispositivos Anbernic H700 de la serie RG XX, el porcentaje de batería reportado por el PMIC será de 0-1% cuando en realidad queda aproximadamente una hora de juego.
    
    Por el contrario, el cálculo basado en voltaje es más preciso. Sin embargo, ten en cuenta que, dependiendo del dispositivo y las diferentes opciones de software instaladas, podrías experimentar un comportamiento confuso. Por ejemplo, en los dispositivos TrimUI Smart Pro y Brick (Hammer), la iluminación RGB se desactiva automáticamente cuando el valor reportado por el PMIC alcanza un cierto nivel (véase: [LEDs RGB](./rgb-leds.md)). Dependiendo de la diferencia entre el valor reportado por el PMIC y el cálculo basado en voltaje, y del umbral de advertencia de batería baja configurado en el menú RGB, es posible que nunca recibas la advertencia de batería baja en el modo de voltaje. Además, algunas aplicaciones podrían obtener la estimación de la batería directamente a través del PMIC, sin pasar por BatteryPlus.
    
## Calibración

Los dispositivos vienen con una calibración básica, pero la precisión mejora tras una configuración inicial rápida.

Para calibrar BatteryPlus en tu dispositivo:

* Enciende el dispositivo.
* Conéctalo a un cargador de pared.
* Deja que se cargue al 100%.
    * **Debes** hacerlo con el dispositivo **encendido**.
    * Desactiva la suspensión/apagado automático si es necesario.
* Desconecta el cargador.
* Espera ~15 segundos.

Puedes comprobar si la calibración se ha completado presionando ++"START"++ para acceder al menú principal, luego ve a *Ajustes del Sistema* y, a continuación, a *Información*, donde podrás comprobar si BatteryPlus está calibrado.

!!! info "Configuraciones con varias tarjetas SD."

    Si se detecta un dispositivo o entorno diferente, la calibración se restablece a los valores predeterminados. En estos casos, la información del sistema reflejará el estado sin calibrar.


## Modos

BatteryPlus admite dos modos:

* `voltage` (predeterminado) — recomendado.
* `pmic` — se utiliza el porcentaje reportado por el hardware.

Para cambiar de modo, busca `knulli.conf` en la carpeta `system` de tu [carpeta `userdata`](../play/add-games/game-storage.md) y edítalo con un editor de texto plano (por ejemplo, Notepad++). Busca la línea que dice:

```
system.batteryplus.mode=voltage
```

y cámbiala a:

```
system.batteryplus.mode=pmic
```

Es posible que debas reiniciar el dispositivo para reiniciar todos los servicios que reciben actualizaciones de BatteryPlus.

## Notas

* La calibración establece el voltaje de referencia del 100% (`V_FULL`).
* Si tú:
    * Cargas el dispositivo apagado,
    * Desconectas el cargador y
    * Enciendes el dispositivo (sin cargarlo) y éste no muestra el 100%, ¡es posible que debas calibrarlo!
* Los datos de calibración se almacenan en la partición share/userdata.