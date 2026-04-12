# :material-controller: Métodos de Entrada

Esta sección te brindará una descripción general de las entradas básicas de tu dispositivo. Además, te ayudará a comprender la **terminología** utilizada en esta wiki y en la comunidad de juegos retro.

## Los botones frontales

![Face buttons](../_inc/images/face-buttons.png){ align=right }

La mayoría de las consolas portátiles compatibles con KNULLI cuentan con botones frontales, generalmente ubicados en el lateral derecho. En la mayoría de los dispositivos, hay cuatro botones frontales. Dependiendo del dispositivo o control, los botones pueden tener diferentes etiquetas.

KNULLI sigue principalmente el sistema de etiquetado de SNES y los dispositivos Anbernic. Sin embargo, a veces también se hace referencia a los botones por sus respectivas direcciones para evitar confusiones a los usuarios de controles de PlayStation o Xbox.

### Botones frontales en diferentes sistemas

| KNULLI  | Ubicación                       | Dirección  | PS      | XBOX    |
| ------- | ------------------------------- | ---------- | ------- | ------- |
| ++"X"++ | :material-gamepad-circle-up:    | Norte      | ++"△"++ | ++"Y"++ |
| ++"A"++ | :material-gamepad-circle-right: | Este       | ++"○"++ | ++"B"++ |
| ++"B"++ | :material-gamepad-circle-down:  | Sur        | ++"✕"++ | ++"A"++ |
| ++"Y"++ | :material-gamepad-circle-left:  | Oeste      | ++"◻"++ | ++"X"++ |

!!! info "Invertir los botones Cancelar y Confirmar en EmulationStation."

    Por defecto, KNULLI sigue el esquema de control de los dispositivos Nintendo en todos los menús: ++"A"++ para *Aceptar/Confirmar* y ++"B"++ para *Cancelar/Volver*. Sin embargo, si te sientes más familiarizado con el esquema de PlayStation, presiona ++"Start"++ para abrir el menú principal, ve a *Ajustes del Sistema* y busca *Opciones de Desarrollador*. Aquí encontrarás un botón para *Invertir los Botones Cancelar y Confirmar en EmulationStation*.

!!! info "Las indicaciones del juego pueden no coincidir con las etiquetas de tu dispositivo."

    KNULLI es un firmware personalizado para emulación de juegos retro que también es compatible con ciertas versiones de juegos de Linux. Los botones del dispositivo están etiquetados al estilo Nintendo, como se explica en la tabla de arriba: ++"A"++ es **Este** (:material-gamepad-circle-right:), ++"B"++ es **Sur** (:material-gamepad-circle-down:), etcétera.

    Debería ser obvio, pero como algunos usuarios lo han reportado como un "error", ten en cuenta lo siguiente:

    Muchos juegos te pedirán que presiones botones cuyas etiquetas **no coinciden** con las impresas en los botones de tu consola portátil. Por ejemplo, si juegas a un juego de PSX o PSP y el juego te pide **△**, debes presionar el botón ++"X"++ (Norte, :material-gamepad-circle-up:), ya que el botón Norte tiene la etiqueta **△** en los controles de PlayStation, como se explica en la tabla de arriba.

    Ten en cuenta que **muchos juegos de PortMaster** están configurados para considerar tu dispositivo como un **control de Xbox**. Por ello, los juegos te mostrarán **indicaciones al estilo Xbox**. Por lo tanto, si un juego de PortMaster te pide que presiones el botón Sur, es probable que te pida que presiones **A**; sin embargo, podría ser necesario que presiones ++"B"++ en su lugar. Entendemos que esto puede parecer contra-intuitivo; sin embargo, sigue siendo la **asignación correcta por posición**.

    ### Intercambiar A/B y X/Y para ports

    Si tienes problemas con las indicaciones al estilo Xbox de un juego de ports, es posible **cambiar la asignación cardinal correcta** y forzar una **asignación cardinal incorrecta**, asignando los botones **por etiqueta**. Esto **solo** se puede configurar para cada juego en la sección *Ports*:

    - Ve a la sección *Ports* y selecciona el juego que quieras jugar con la asignación cardinal incorrecta.
    - Mantén presionado el botón que inicia el juego (++"A"++ o ++"B"++, según tu configuración) para abrir el menú del juego.
    - Ve a *Opciones Avanzadas del Juego*.
    - Busca la opción *Switch A/B and X/Y* y actívala.
    
    Ten en cuenta que esto dificultará la jugabilidad de algunos juegos, ya que todas las acciones estarán en el lugar incorrecto.

## El botón ++"Function"++

Cada dispositivo controlado por KNULLI tiene un botón dedicado llamado botón ++"Function"++. Dependiendo de tu dispositivo, el botón ++"Function"++ puede estar en diferentes lugares. Por ejemplo, en la Anbernic RG35XX H, se encuentra en la esquina superior derecha del dispositivo, indicado con la letra *F*. (A veces, también se le conoce como botón de "menu", botón "FN", botón "F" o de "atajo").

Este botón te permite activar diversos atajos que te ayudarán a controlar el núcleo de emulación en ejecución. Puedes obtener más información sobre los atajos predeterminados de KNULLI en la sección [Atajos](./hotkey-shortcuts.md).

!!! info "El botón Select sustituye al botón Function en muchos controles externos."

    Al jugar con controles Bluetooth sin un botón ++"Function"++, el botón ++"Select"++ suele utilizarse como sustituto. Sin embargo, ten en cuenta que, en este caso, la acción predeterminada de *select* del contexto correspondiente *también* se activa al presionar el botón.

## El botón ++"Power"++

Cuando tu dispositivo esté apagado, puedes usar el botón de encendido para encender tu dispositivo KNULLI, como se explica en el manual de tu dispositivo. Una vez encendido:

- **Presiona** el **botón de encendido** una vez para entrar en **modo de suspensión** (dependiendo del dispositivo, podría seguir consumiendo mucha energía en este modo).
- **Mantén presionado** el **botón de encendido** durante **2 segundos** (hasta que el dispositivo vibre) para **apagarlo**.
    - Todos los ajustes del sistema que hayas realizado desde la última vez que iniciaste el dispositivo se guardarán automáticamente.
    - Si juegas a un juego con un núcleo de RetroArch, la partida se guardará automáticamente.
    - Si juegas a un juego con un emulador independiente, la partida **no** se guardará automáticamente.
- **Mantén presionado** el **botón de encendido** durante **5 segundos o más** para **desenergizar** el dispositivo, anulando así el apagado normal.
    - No se guardará **nada**; ¡este es solo un último recurso cuando el dispositivo se bloquea!
- **Mantén presionado** el botón ++"Function"++ y **presiona** el **botón de encendido** para cambiar entre los modos del LED:
    - LED siempre encendido (predeterminado).
    - LED apagado durante el juego (el LED parpadea para confirmar).
    - LED siempre apagado.
    - El modo LED se restablecerá a los valores predeterminados después de cada reinicio o apagado. 

## Tapa tipo concha

Algunos dispositivos tienen forma de concha y, por lo tanto, una tapa. Dependiendo del dispositivo, es posible usar la tapa para **entrar en modo de suspensión** o **apagar** el dispositivo.

!!! info "Regresar del modo de suspensión al abrir la tapa."

    Nos resulta **imposible** ejecutar **cualquier** código de programa mientras un dispositivo está **apagado** o en **modo de suspensión**. Por lo tanto, si la tapa no está configurada en el hardware para funcionar como botón de encendido, nos resulta **imposible** registrar si la tapa se abre mientras el dispositivo está **apagado** o en **modo de suspensión**, simplemente **porque** el dispositivo está **apagado** o en **modo de suspensión**.

    Por consiguiente, no podemos hacer que un dispositivo como este (por ejemplo, la **Anbernic RG35XX SP**) se active o arranque al abrirse la tapa. No tiene sentido pedir esta función a nuestros desarrolladores en Discord. No tiene sentido esperar a que la tengan. No tiene sentido presionar. En algunos dispositivos, simplemente no es posible.

## El interruptor

Algunos dispositivos, como la TrimUI Brick y la TrimUI Smart Pro, incluyen un interruptor. Este interruptor es una entrada adicional que se puede configurar en *Device Settings*:

- Presiona ++"Start" para abrir el menú principal.
- Ve a *Device Settings*.
- Busca *Toggle Switch Mode* y configúralo en:
    - *mute/unmute* para silenciar y activar el sonido del dispositivo mediante el interruptor.
    - *RGB on/off* para activar o desactivar el LED RGB mediante el interruptor.
    - *Airplane mode on/off* para activar o desactivar el modo avión mediante el interruptor.
