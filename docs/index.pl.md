<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-booting-up.png"/>
</div>

# Witaj na KNULLI Wiki :material-gamepad:

KNULLI to niestandardowe oprogramowanie dla urządzeń do gier retro (przenośne, bartopy itp.). Jest rozwijane jako fork [Batocera](https://batocera.org). Stara się zapewnić wsparcie dla urządzeń, które spełniają co najmniej jedno z poniższych kryteriów:

* Nie ma dostępnych źródeł open source jądra i/lub u-boot
* Istnieją źródła, ale jądro albo nie jest głowne, albo jest zbyt stare (np. urządzenia z jądrem BSP 3.4, takie jak Egret II Mini)
* Nie ma obsługi GPU lub GPU nie jest obsługiwane, więc framebuffer jest jedyną opcją
* Jest to urządzenie, które posiadam i postanowiłem zbudować dla niego CFW

## Funkcje

KNULLI obsługuje urządzenia z GPU ( wsparcie GLES) i tylko z buforem ramki (legacy).

* Frontend Emulation Station dla urządzeń opartych na GPU
* Simplemenu/Simplermenu+ dla urządzeń tylko z buforem klatki (również dla tych opartych na GPU, jeśli są preferowane)
* RetroArch plus wiele rdzeni libretro
* Wsparcie dla sieci bezprzewodowej i Bluetooth (w tym audio), gdy jest to obsługiwane przez urządzenie
* Wsparcie dla zewnętrznej karty bezprzewodowej USB dla tych bez wewnętrznej karty bezprzewodowej
* Retroachivements
* Netplay
* Wsparcie dla skrapera okładek/miniatur

## Społeczność

KNULLI korzysta z Discorda i [:simple-github: GitHub](https://github.com/knulli-cfw/distribution/discussions) stron dyskusyjnych :simple-github: GitHub do dyskusji, jeśli chcesz do nas dołączyć, skorzystaj z tego linku: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Licencje

KNULLI to dystrybucja Linuxa, która składa się z wielu komponentów open-source. Komponenty są dostarczane na mocy ich odpowiednich licencji. Ta dystrybucja zawiera komponenty licencjonowane tylko do użytku niekomercyjnego.

### Oprogramowanie w zestawie
Całe pozostałe oprogramowanie jest dostarczane na odpowiedniej licencji każdego komponentu.  Licencje te można znaleźć w źródłach oprogramowania lub w folderze licencji tego projektu.  Modyfikacje dołączonego oprogramowania i skryptów przez zespół KNULLI są licencjonowane zgodnie z warunkami modyfikowanego oprogramowania.

### Jądra binarne i bootloadery

Wydania dla niektórych urządzeń zawierają jądra i/lub bootloadery, które nie mają dostępnego kodu źródłowego, ponieważ producent ich nie opublikował. W tych przypadkach strona specyficzna dla urządzenia zawiera instrukcje, jak wyodrębnić te elementy z oryginalnego oprogramowania.

## Podziękowania

Ten projekt nie jest dziełem jednej osoby, ale jest dziełem wielu osób na całym świecie, które opracowały elementy open-source, bez których ten projekt nie mógłby istnieć. Specjalne podziękowania dla Batocera, muOS, JelOS, CoreELEC, LibreELEC oraz dla deweloperów i współtwórców na całym świecie w społeczności open source.
