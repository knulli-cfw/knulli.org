<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-scarab.png"/>
</div>

# Willkommen bei KNULLI :material-gamepad:

## Ein neuer Release ist entstanden! [![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/knulli-linux/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/knulli-linux/releases/latest)

*"Die Wunderhöhle darf nur der betreten, dessen wahre Werte sich noch tief verbergen."*

Endlich wurden alle Einzelteile zusammengefügt für den Release von **KNULLI Scarab**. Wir, das KNULLI-Team, sind glücklich und stolz euch in diese Höhle der Wunder einladen zu dürfen!

KNULLI-Scarab ist ein **Major Update**, das eine Tonne neuer Features und Quality-Of-Life-Verbesserungen mitbringt, darunter u.A. folgende Highlights:

- KNULLI unterstützt jetzt die gesamten H700-Geräte aus Anbernics RG-XX-Reihe
- Unterstützung für diverse neue Geräte wurde hinzugefügt, u.A. BattleXP G350, GKD Pixel 2, Miyoo Flip, Powkiddy X55, Retroid Pocket 5, Flip 2, uvm.
- **RetroArch** wurde auf Version **1.22.2** aktualisiert
- **Standalone Yabasanshiro** wurde als neue Emulator hinzugefügt um die Performance von SEGA Saturn zu verbessern
- Die neue **[Syncthing-Integration](./configure/syncthing.md)** ermöglicht es, Synchronisation bequem aus EmulationStation heraus anzustoßen oder sogar automatisch beim Beenden eines Spiels, Benachrichtigungen informieren dich jetzt über laufende Datenübertragungen
- Die neue [**BatteryPlus**](./configure/batteryplus.md)-Funktion gibt dir präzisere Auskunft über den Zustand deines Akkus
- [Verbesserte RGB-Unterstützung durch **Silky RGB**](./configure/rgb-leds.md) (vielen Dank, [doughn0](https://github.com/doughn0/SilkyRGB)!)
- [**PortMaster**](./systems/portmaster.md/#installing-portmaster) kann jetzt direkt aus dem [*Device Settings* Menü](./systems/portmaster.md/#installing-portmaster) installiert werden
- Ein Riesenhaufen **Bugfixes** und **Verbesserungen** von Systemstabilität, Performance und Energiesparsamkeit

Du findest eine vollständige Liste aller Änderungen in unserem [Change Log](https://github.com/knulli-cfw/knulli-linux/blob/knulli-main/knulli-Changelog.md).

!!! warning "Major Update"

    Diese Version von KNULLI bringt eine große Anzahl neuer Features mit, die ein **erneutes Flashen der Firmware** leider notwendig machen, insbesondere weil wir die **Partitionstabellen der SD-Karten** geändert haben.

    Außerdem wurden viele Dateien und Ordner umbenannt, weshalb auch Konfigurationsdateien etc. aus dem `system`-Ordner deiner  **Gladiator II**-Installation mit **Scarab** **nicht mehr kompatibel sind**.

    Wir **empfehlen daher dringend** mit einer frischen Installation neu zu Starten. Falls du versuchen möchtest, Nutzerdaten aus einer vorherigen Installation zu migrieren, wirf einen Blick auf den [Major Updates guide](./guides/major-updates.md).

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
