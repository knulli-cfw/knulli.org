<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator-ii.png"/>
</div>

# Willkommen bei KNULLI :material-gamepad:

## Es ist an der Zeit für eine Fortsetzung! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"Behandelt Rom so seine Helden?"*

Oh ja, das tut es! KNULLI Gladiator war *so* gut, es war quasi dafür prädestiniert eine Fortsetzung zu erhalten. Dementsprechend kündigen wir mit Stolz an, dass **KNULLI Gladiator II** soeben veröffentlicht wurde!

Die neue Version ist ein Update von KNULLI Gladiator, d.h. es benutzt die gleichen Emulatorversionen etc. Allerdings bringt Gladiator II eine ganze Reihe von Bugfixes und Verbesserungen mit. Im Mittelpunkt stehen dabei **OTA-Updates (over-the-air)**, die es möglich machen, in Zukunft KNULLI über das Internet direkt am Handheld zu aktualisieren!

Wir können es natürlich nicht versprechen, aber insofern wir keine **gigantischen** Änderungen machen, die es nötig machen, KNULLI erneut zu flashen, wirst du **alle zukünftigen Updates** über OTA installieren können! (Dadurch werden sich die Entwicklungszyklen allerdings **nicht** verkürzen! Rechne mit neuen OTA-Updates auf dem **Stable**-Kanal auch weiterhin im Abstand von 3-4 Monaten.)

Eine vollständige Liste aller neuen Features, Bugfixes und Änderungen findest du im [Changelog](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md). Hier sind ein paar Highlights:

### Neue Features von KNULLI Gladiator II

- **Geräteunterstützung** für Anbernic RG34XX SP, RG35XX Pro und Powkiddy V90S, V20
- **[Over-the-air-Updates](./play/update.md)** über das Menü *Updates & Downloads* werden zukünftige Updates deutlich vereinfachen
- **SMB (SAMBA)** ist jetzt ein [**Service**, den du ein- und ausschalten kannst](./play/add-games/network-transfer.md) und der standardmäßig **deaktiviert** ist
- Ein Schalter um das **eingebaute "Gamepad"** bei der [automatischen Zuweisung](./configure/controls.md) immer Spieler 1 zuzuordnen sowie ein paar Fehlerbehandlungen bei der automatischen Zuweisung von **USB-Controllern**
- Fehlerbehebung bzgl. **Standalone-Emulatoren für Dreamcast/PSP** auf **A133**-Geräten (TrimUI Brick, TrimUI Smart Pro)
- Bezel-Dekorationen
    - sind jetzt **automatisch aktiviert** when als *Decoration Set* der Wert *Auto* ausgewählt ist
    - werden jetzt auf den *H700*-Geräten (Anbernic RG-XX-Serie) auch bei **Standalone-Emulatoren** angewandt
    - enthalten jetzt ein zusätzliches Set *Default-Knulli-SP*, das speziell für das **GBA**-System angelegt wurde und **SP**-Vibes auf Clamshell-Geräten mit 4:3-Bildschirmen versprüht
- Ein **Disk-Check**-Werkzeug wurde unter *System Settings* → *Frontend Developer Options* hinzugefügt, um die Integrität deiner SD-Karten zu überprüfen
- **Soft Reset** ist ein neuer [Hotkey-Shortcut](./play/hotkey-shortcuts.md), mit dem ein Neustart von EmulationStation erzwungen werden kann
- Du kannst dein Gerät jetzt direkt über EmulationStation **[auf Werkseinstellungen zurücksetzen](./configure/reset-to-factory-settings.md)**
- Ein großer Haufen weiterer **Bugfixes** und **Verbesserungen** der Systemstabilität, Performance, und Akkulaufzeit

!!! warning "Major Update"

    Diese Version von KNULLI bringt eine große Menge Veränderungen mit sich, die es **zwingend nötig** machen, dass du KNULLI **neu flashst**. Insbesondere muss die Partitionsgröße der `BATOCERA`-Partition angepasst werden, damit sie in Zukunft fähig ist, OTA-Updates zu bewältigen.

    Falls du ein Update von **Gladiator** zu **Gladiator II** durchführst, kannst du in diesem Fall deinen `system`-Ordner behalten, da es zwischen den Versionen keine Kompatibilitätsprobleme geben sollte.

    Jedem anderen **raten wir eindringlich dazu**, eine komplett neue Installation von KNULLI aufzusetzen. Wenn du allerdings unbedingt versuchen möchtest, deine Benutzerdaten einer vorherigen Installation zu übernehmen, wirf bitte einen Blick in den Abschnitt [Major Updates](./guides/major-updates.md).

Falls du KNULLI noch nicht kennst und **neu installieren** möchtest: Unser [Quick Start Guide](./play/quick-start.md) wird dich durch die Installation und die ersten Schritte mit KNULLI begleiten.

In jedem Fall wünschen wir dir viel Spaß beim Spielen mit KNULLI!

## Über KNULLI

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
