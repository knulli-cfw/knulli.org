<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-booting-up.png"/>
</div>

# Willkommen auf dem KNULLI Wiki :material-gamepad:

KNULLI ist eine benutzerdefinierte Firmware (CFW) für Retro-Gaming-Geräte (Handhelds, Bartops, etc.). Knulli wurde als eine Abspaltung von [Batocera](https://batocera.org) entwickelt und versucht Geräte zu unterstützen, die unter mindestens eine dieser Kategorien fallen:

-   Es sind kein quelloffenenr Kernel- und/oder u-boot-Quellcode verfügbar
-   Es gibt Quellcode, aber der Kernel ist entweder nicht Mainline und/oder zu alt (z.B. Geräte mit einem BSP Kernel 3.4 wie der Egret II Mini)
-   Es gibt keine GPU-Unterstützung oder die GPU wird nicht unterstützt, also ist Framebuffer die einzige Option
-   Es ist ein Gerät, das ich besitze und für das ich beschlossen habe eine CFW zu bauen

## Eigenschaften

KNULLI unterstützt Geräte mit GPU (GLES-Unterstützung) und nur Framebuffer (Legacy).

-   Emulation Station Oberfläche für GPU-basierte Geräte
-   Simplemenu/Simplermenu+ für reine Framebuffer-Geräte (auch für GPU-Geräte, falls gewünscht)
-   RetroArch inklusive mehrerer libretro-Kerne
-   WLan- und Bluetooth-Unterstützung (einschließlich Audio), sofern vom Gerät unterstützt
-   Unterstützung für externe USB-WLan-Dongles für Geräte ohne interne Wireless-Karte
-   RetroAchievements
-   Netplay
-   Unterstützung für Cover Art/Thumbnail Scrapper

## Community

KNULLI nutzt Discord und [:simple-github: GitHub](https://github.com/knulli-cfw/distribution/discussions) Diskussionsseiten für Diskussionen, wenn du dich uns anschließen möchtest, nutze bitte folgenden Link: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Lizenzen

KNULLI ist eine Linux-Distribution, die sich aus vielen Open-Source-Komponenten zusammensetzt. Die Komponenten werden unter ihren jeweiligen Lizenzen bereitgestellt. Diese Distribution enthält Komponenten, die nur für den nicht-kommerziellen Gebrauch lizenziert sind.

### Drittanbieter Komponenten

Alle andere Software wird unter der jeweiligen Lizenz der einzelnen Komponenten bereitgestellt. Diese Lizenzen sind in den Software-Quellen oder im Lizenzordner dieses Projekts zu finden. Änderungen an gebündelter Software und Skripten durch das KNULLI-Team werden unter den Bedingungen der modifizierten Software lizenziert.

### Kernel und Bootloader

Die Versionen für einige Geräte enthalten Kernel und/oder Bootloader, für die kein Quellcode verfügbar ist, weil der Hersteller sie nicht veröffentlicht hat. In diesen Fällen enthält die gerätespezifische Seite Anweisungen, um diese aus der Standard-Firmware zu extrahieren.

## Credits

Dieses Projekt ist nicht das Werk einer einzelnen Person, sondern das Werk vieler Personen auf der ganzen Welt, die die Open-Source-Bits entwickelt haben, ohne die dieses Projekt nicht existieren könnte. Besonderer Dank gilt Batocera, muOS, JelOS, CoreELEC, LibreELEC und den Entwicklern und Mitwirkenden der gesamten Open-Source-Gemeinschaft.
