# :material-frequently-asked-questions: Preguntas sobre KNULLI

### P: ¿Qué es KNULLI?

R: KNULLI es un fork de [Batocera](https://batocera.org). Busca ofrecer soporte para dispositivos que se encuentren en al menos una de estas tres categorías:

* No hay kernels de código abierto ni fuentes de u-boot disponibles.
* Hay fuentes, pero el kernel no es el principal o es demasiado antiguo (por ejemplo, dispositivos con un kernel BSP 3.4 como el Egret II Mini).
* Es un dispositivo que tengo y he decidido crear un firmware personalizado para él.

---

### P: ¿Por qué un fork y no fusionar los cambios de vuelta a Batocera?

R: Porque la licencia de Batocera no permite añadir kernels de código cerrado a la distribución.

---

### P: ¿Hay otras diferencias?

R: El objetivo es mantener la compatibilidad con Batocera, pero centrándonos en dispositivos de bajo consumo o que no necesariamente se benefician de algunas funciones que afectan el rendimiento, etc. Por ejemplo, dispositivos con poca memoria (256 MB como la Powkiddy A12/A13 o la RG35XX Classic). También se pretende añadir funciones presentes en [JelOS](https://jelos.org)/[Rocknix](https://github.com/rocknix), [EmuELEC](https://github.com/EmuELEC), etc.

---

### P: ¿Saben qué significa la palabra "Knulli" en sueco?

R: Sí, lo sabemos. 😃

---

### P: Estoy usando la versión beta de Batocera v39/40 en mi RG35XX Plus/H. ¿Debería cambiar a KNULLI?

R: La respuesta corta es: ¡Sí!

La respuesta larga es: Tras adaptar Batocera para que funcionara en la RG35XX Plus/H, se hizo evidente que Batocera no podría integrar nuestros cambios propuestos en su software debido a problemas de licencia. La licencia con la que se publica Batocera no es compatible con la licencia de los controladores para la RG35XX Plus/H. Por lo tanto, creamos una versión derivada de Batocera con un nombre completamente nuevo para resolver los problemas de licencia. Si bien la versión beta de Batocera v39/40 para la RG35XX Plus/H ya no se mantiene, KNULLI es su sucesor inmediato. Por lo tanto, cambiar a KNULLI equivale a actualizar a una versión más reciente del mismo sistema operativo que ya estás utilizando.

---

### P: ¿De dónde puedo descargar la versión más reciente?

R: Encontrarás la versión más reciente de KNULLI en nuestra [Página de Versiones](https://github.com/knulli-cfw/knulli-linux/releases/latest). Busca la descarga para tu dispositivo en la sección `Installation Package Downloads` y sigue la [Guía de Inicio Rápido](../play/quick-start.md) para instalar KNULLI en tu dispositivo. Si tu dispositivo no aparece en la lista, ten paciencia - todavía no hay una versión pública de KNULLI disponible para tu dispositivo.

---

### P: ¿Qué dispositivos son compatibles?

R: Encontrarás una lista de todos los dispositivos compatibles actualmente en la sección `Installation Package Downloads` de nuestra [Página de Versiones](https://github.com/knulli-cfw/knulli-linux/releases/latest). Si tu dispositivo no aparece en la lista, todavía no hay una versión pública de KNULLI disponible para él.

---

### P: ¿Tengo que flashear cada versión o puedo actualizar?

R: Para la mayoría de las versiones, se puede ejecutar una actualización manual como se explica en la sección [Actualizar](../play/update.md).

---

### P: ¿Es compatible con "tal dispositivo"? ¿Añadirán compatibilidad para "tal dispositvo"?

R: Puedes encontrar la lista de dispositivos compatibles actualmente aquí: [Dispositivos](../devices/index.md).

Si el dispositivo que te interesa no está en la lista, significa que nadie ha contribuido a añadir compatibilidad. ¿Por qué? Para añadir compatibilidad con un dispositivo, (1) debemos estar interesados en ello 😊 y (2) debemos tener acceso al dispositivo.

Dicho esto, ¡cualquier persona interesada puede enviar actualizaciones a KNULLI para añadir compatibilidad con un dispositivo que le interese! Si te interesa añadir compatibilidad con un nuevo dispositivo, por favor comienza por aquí: [Contribuir](../community/contribute.md).

---

### P: ¿Es posible licenciar KNULLI para su redistribución?

R: KNULLI utiliza una licencia copyleft CC BY-NC-SA 4.0 no comercial para nuestra marca, con el fin de evitar el abuso hacia nuestro trabajo. Los fabricantes de dispositivos y otras personas que deseen incluir contenido en paquetes de dispositivos no pueden hacerlo sin nuestra autorización expresa.

---

### P: ¿Puedo vender KNULLI?

R: La marca KNULLI tiene licencia únicamente para uso no comercial. No se permite su venta ni su inclusión con cargo adicional de ningún tipo. Punto. Esto no es negociable.