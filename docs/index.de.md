<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator.png"/>
</div>

# Willkommen bei KNULLI :material-gamepad:

## Hier kommt der Gladiator! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"Gefällt es euch nicht?! Unterhalte ich euch nicht?!"*

Falls ihr euch nach besserer Unterhaltung sehnt, haben wir gute Nachrichten: **KNULLI Gladiator** ist da! Die brandneue Version von KNULLI bringt eine ganze Reihe neuer Features und Verbesserungen mit, z.B.:

- Geräteunterstützung für Anbernic RG34XX
- Verbesserte Unterstützung für Trim-UI-Geräte ([Unterstützung des Schalters](play/basic-inputs), RGB, Energiesparmodus, D-Pad-als-Stick-Funktion)
- exFAT als neues Standarddateisystem
- Der neue [Quick-Resume-Modus](configure/quick-resume) lässt euch direkt in euer Spiel booten
- Verbesserte Bluetooth- und W-LAN-Konnektivität
- Automatische Zuweisung von [Controllern](configure/controls) zu Spielern
- Automatisches Umschalten zwischen [Bluetooth](configure/bluetooth)-Audio und den eingebauten Lautsprechern
- [RGB-Einstellungen](configure/rgb-leds) sind jetzt in EmulationStation integriert
- Verbessertes RGB-Verhalten
- Verbesserte Energieverwaltung und neue Möglichkeiten um den Energieverbrauch zu reduzieren
- Verbesserte Geschwindigkeit beim Laden von EmulationStation
- Drastic-Steward von Advanced Drastic als NDS-Emulator abgelöst
- [MPV Media Player](systems/media-player) hinzugefügt
- Automatische Erkennung von [ScummVM](systems/scummvm)-Spielen
- 60-Hz-Patch für RG35XX SP, RG34XX und RG CubeXX angewandt (Vielen Dank [@TheGammaSqueeze](https://github.com/TheGammaSqueeze)!)
* Unzählige Bugfixes und Verbesserungen

Eine vollständige Liste aller Features, Korrekturen und Änderungen findet ihr im [Changelog](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md).

!!! warning "Major Update"

    Diese Version von KNULLI bringt eine große Menge Veränderungen mit sich, die es **zwingend nötig** machen, dass du KNULLI **neu flashst**.

    Wir **raten eindringlich dazu**, eine komplett neue Installation von KNULLI aufzusetzen. Wenn du allerdings unbedingt versuchen möchtest, deine Benutzerdaten einer vorherigen Installation zu übernehmen, wirf bitte einen Blick in den Abschnitt [Major Updates](guides/major-updates).

Falls du KNULLI noch nicht kennst und **neu installieren** möchtest: Unser [Quick Start Guide](play/quick-start) wird dich durch die Installation und die ersten Schritte mit KNULLI begleiten. Falls du KNULLI bereits verwendest und auf die **neue Gladiator-Version wechseln** möchtest: Bitte sei dir bewusst, dass die [PortMaster-und-exFAT-Situation](guides/portmaster-and-exfat) sich **geklärt hat** und KNULLI jetzt standardmäßig das Windows/MacOS-kompatible Dateisystem **exFAT** verwendet! Vielleicht ist jetzt ein guter Zeitpunkt um einmal das ganze System neu aufzusetzen?

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
