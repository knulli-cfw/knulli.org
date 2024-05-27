<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-booting-up.png"/>
</div>

# Willkommen im KNULLI-Wiki :material-gamepad:

KNULLI ist eine unabhängige Custom-Firmware (CFW) für Retro-Gaming-Konsolen (Handhelds, Bartops, etc.). Knulli wird als Fork von [Batocera](https://batocera.org) entwickelt und verfolgt das Ziel, Geräte zu unterstützen, die unter mindestens eine dieser Kategorien fallen:

-   Es ist kein quelloffener Kernel- und/oder u-boot-Code verfügbar
-   Es gibt Quellcode, aber der Kernel ist nicht Mainline und/oder zu alt (z.B. Geräte mit einem BSP Kernel 3.4 wie der Egret II Mini)
-   Es gibt keine GPU-Unterstützung oder die GPU wird nicht unterstützt, d.h. Framebuffer ist die einzige Option
-   Es ist ein Gerät, das ich besitze und für das ich beschlossen habe eine CFW zu bauen

## Features

KNULLI unterstützt sowohl Geräte mit GPU (GLES-Unterstützung) als auch Geräte, die nur über Framebuffer verfügen (Legacy).

-   Emulation Station als Frontend für GPU-basierte Geräte
-   Simplemenu/Simplermenu+ als Frontend für reine Framebuffer-Geräte (auch für GPU-Geräte, wenn bevorzugt)
-   RetroArch inklusive mehrerer libretro-Kerne
-   W-LAN- und Bluetooth-Unterstützung (einschließlich Audio), sofern vom Gerät unterstützt
-   Unterstützung für externe USB-W-LAN-Dongles für Geräte ohne interne Wireless-Karte
-   RetroAchievements
-   Netplay
-   Unterstützung für Cover-Art/Thumbnail Scraper

## Community

KNULLI nutzt Discord für Diskussionen, wenn du dich uns anschließen möchtest, nutze bitte folgenden Link: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Lizenzen

KNULLI ist eine Linux-Distribution, die sich aus vielen Open-Source-Komponenten zusammensetzt. Die Komponenten werden unter ihren jeweiligen Lizenzen bereitgestellt. Diese Distribution enthält Komponenten, die nur für den nicht-kommerziellen Gebrauch lizenziert sind.

### Drittanbieter-Komponenten

Alle eingebundenen Software-Komponenten werden unter den jeweiligen Lizenzen der einzelnen Komponenten bereitgestellt. Diese Lizenzen sind in den Software-Quellen oder im Lizenzordner dieses Projekts zu finden. Alle Änderungen an den eingebundenen Softwarekomponenten und Skripten durch das KNULLI-Team werden unter den Bedingungen der jeweiligen modifizierten Software lizenziert.

### Kernel und Bootloader

Die Versionen für einige Geräte enthalten Kernel und/oder Bootloader, für die kein Quellcode verfügbar ist, weil der Hersteller den Quellcode nicht veröffentlicht hat. In diesen Fällen enthält die gerätespezifische Seite Anweisungen, um diese aus der Standard-Firmware zu extrahieren.

## Credits

Dieses Projekt ist nicht das Werk einer einzelnen Person, sondern das Werk vieler Personen auf der ganzen Welt, die die Open-Source-Komponenten entwickelt haben, ohne die dieses Projekt nicht existieren könnte. Besonderer Dank gilt Batocera, muOS, JelOS, CoreELEC, LibreELEC und den Entwicklern und Mitwirkenden der gesamten Open-Source-Gemeinschaft.
