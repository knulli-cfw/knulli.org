<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-firefly.png"/>
</div>

# Willkommen bei KNULLI :material-gamepad:

## Firefly ist da! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

Wir freuen uns sehr, dass wir es endlich ankündigen dürfen: **KNULLI Firefly** steht zum Download bereit! Warum "Firefly"? Ab Firefly werden alle KNULLI-Versionen einen Codenamen haben, um die verschiedenen Versionen leichter unterscheiden zu können. KNULLI Firefly bringt eine ganze Reihe neuer Features und Verbesserungen mit. Hier sind einige Highlights:

* Unterstützung für die Geräte RG40XX H, RG40XX V und RGCubeXX hinzugefügt
* Unterstützung der [Klappfunktion](../configure/power-management) des RG35XX SP verbessert (Standby oder Herunterfahren)
* "Cardinal Snapping" der Joysticks von RG35XX H und RG40XX H/V entfernt (Vielen Dank, @thegammasqueeze!)
* Einführung von [Energieeinstellungen](../configure/power-management) um die Akkulaufzeit zu verbessern
* Unterstützung für die [RGB-LEDs](../configure/rgb-leds) von RG40XX H/V und RGCubeXX hinzugefügt
* Drastic-Steward als zusätzlicher NDS-Emulator hinzugefügt
* Unterstützung für 32-Bit-Portmaster-Spiele hinzugefügt
* Diverse neue Einstellungsmöglichkeiten in EmulationStation für verschiedene Emulatoren
* [Konfigurierbare Hotkey-Tastenkombinationen](../configure/retroarch/custom-hotkey-shortcuts) für RetroArch-Cores hinzugefügt
* Unterstützung der nativen Pico-8-Engine verbessert
* Einführung von [Multi-Resolution-Bezel-Deko-Sets](../configure/customization/bezel-decorations), die Bezel-Dekos für mehrere verschiedene Bildschirmauflösungen enthalten können
* Neues Bezel-Deko-Set *Default-KNULLI* mit Bezel-Dekos für 4:3-, 1:1- und 16:9-Bildschirme hinzugefügt
* Unzählige Bugfixes und Verbesserungen

Ein vollständiges Changelog findet ihr in den [Release Notes auf GitHub](https://github.com/knulli-cfw/distribution/releases/latest).

Für diejenigen, die **KNULLI neu installieren** wollen: Unser [Quick Start Guide](../play/quick-start) wird euch durch die Installation und die ersten Schritte mit KNULLI begleiten. Für diejenigen, die **KNULLI bereits verwenden** und aktualisieren wollen: Bitte **lies die große rote Box** direkt unter diesem Text! In jedem Fall wünschen wir viel Spaß beim Spielen mit KNULLI!

!!! danger "Wichtig: Vor dem Update unbedingt lesen!"

    Diese Version von KNULLI bringt eine große Menge Veränderungen mit sich. Einige dieser Veränderungen machen es leider **zwingend nötig**, dass du KNULLI **neu flashst**. Wir **raten dringend davon ab**, eine bestehende KNULLI installation manuell zu aktualisieren - es wird zu Problemen führen. Wir emfehlen stattdessen, eine frische Installation von KNULLI aufzusetzen.

    Da du deine Benutzerdaten wahrscheinlich behalten möchtest, empfehlen wir, dass du sie entweder selbst auf deinen Computer sicherst oder einen Blick auf unsere [Anleitung zur Migration auf ein Dual-SD-Card-Setup](../guides/dual-sd-card-migration) wirfst. Falls du Benutzerdaten aus einer vorherigen KNULLI-Installation übernehmen willst, solltest du **auf keinen Fall** den `system`-Ordner mitnehmen.

    Außerdem ist jetzt vielleicht ein guter Zeitpunkt, um noch einmal über die Wahl des Dateisystems nachzudenken: Wir empfehlen nach wie vor die Verwendung von ext4, es ist allerdings nicht mehr zwingend notwendig, um PortMaster-Spiele spielen zu können. Das PortMaster-Team ist gerade dabei, eine Lösung auszurollen, damit PortMaster-Spiele in Zukunft auch auf KNULLI-Geräten mit exFAT-Laufwerken gespielt werden können. Bitte lies den Abschnitt [PortMaster und exFAT](../guides/portmaster-and-exfat), wenn du mehr darüber wissen möchtest.

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
