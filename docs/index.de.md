<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-firefly.png"/>
</div>

# Willkommen bei KNULLI :material-gamepad:

## Firefly ist da! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

Wir freuen uns sehr, dass wir es endlich ankündigen dürfen: **KNULLI Firefly** steht zum Download bereit! Warum "Firefly"? Ab Firefly werden alle KNULLI-Versionen einen Codenamen haben, um die verschiedenen Versionen leichter unterscheiden zu können. KNULLI Firefly bringt eine ganze Reihe neuer Features und Verbesserungen mit. Hier sind einige Highlights:

* Geräteunterstützung für RG40XX H, RG40XX V und RGCubeXX hinzugefügt
* Geräteunterstützung für TrimUI Smart Pro (pre-alpha)
* Unterstützung der [Klappfunktion](../configure/power-management) des RG35XX SP verbessert (Standby oder Herunterfahren)
* "Cardinal Snapping" der Joysticks von RG35XX H und RG40XX H/V entfernt (Vielen Dank, [@TheGammaSqueeze](https://github.com/TheGammaSqueeze)!)
* Einführung von [Energieeinstellungen](../configure/power-management) um die Akkulaufzeit zu verbessern
* Unterstützung für die [RGB-LEDs](../configure/rgb-leds) der Geräte Anbernic RG40XX H/V, RGCubeXX und TrimUI Smart Pro hinzugefügt
* Drastic-Steward als zusätzlicher NDS-Emulator hinzugefügt
* Unterstützung für 32-Bit-Portmaster-Spiele hinzugefügt
* Diverse neue Einstellungsmöglichkeiten in EmulationStation für verschiedene Emulatoren
* [Konfigurierbare Hotkey-Tastenkombinationen](../configure/retroarch/custom-hotkey-shortcuts) für RetroArch-Cores hinzugefügt
* Unterstützung der nativen Pico-8-Engine verbessert
* Einführung von [Multi-Resolution-Bezel-Deko-Sets](../configure/customization/bezel-decorations), die Bezel-Dekos für mehrere verschiedene Bildschirmauflösungen enthalten können
* Neues Bezel-Deko-Set *Default-KNULLI* mit Bezel-Dekos für 4:3-, 1:1- und 16:9-Bildschirme hinzugefügt
* Unzählige Bugfixes und Verbesserungen

Eine vollständige Liste aller Features, Korrekturen und Änderungen findet ihr im [Changelog](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md).

Falls du KNULLI noch nicht kennst und **neu installieren** möchtest: Unser [Quick Start Guide](../play/quick-start) wird dich durch die Installation und die ersten Schritte mit KNULLI begleiten. Falls du KNULLI bereits verwendest und auf die **neue Firefly-Version wechseln** möchtest: Wirf einen Blick auf die jüngsten Entwicklungen bezüglich der [PortMaster-und-exFAT-Situation](../guides/portmaster-and-exfat) bevor du anfängst, KNULLI neu zu installieren!

In jedem Fall wünschen wir dir viel Spaß beim Spielen mit KNULLI!

!!! warning "Umfangreiches Update"

    Diese Version von KNULLI bringt eine große Menge Veränderungen mit sich, die es **zwingend nötig** machen, dass du KNULLI **neu flashst**.

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
