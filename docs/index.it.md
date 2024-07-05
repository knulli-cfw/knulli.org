<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-booting-up.png"/>
</div>

# Benvenuti nella Wiki di KNULLI :material-gamepad:

KNULLI è un sistema operativo personalizzato per emulatori di giochi retrò (portatili, bartop, ecc.). È sviluppato come fork di [Batocera](https://batocera.org). Cerca di fornire supporto per i dispositivi che rientrano in almeno una di queste categorie:

* Non sono disponibili kernel open source e/o sorgenti u-boot
* Esistono delle sorgenti, ma il kernel non è mainline e/o è troppo vecchio (ad esempio dispositivi con kernel BSP 3.4 come Egret II Mini)
* Non c'è supporto per la GPU o non è supportata, quindi il framebuffer è l'unica opzione
* È un dispositivo che possiedo e ho deciso di creare un CFW per esso

## Caratteristiche

KNULLI supporta solo dispositivi con GPU (supporto GLES) e framebuffer (legacy).

* Frontend Emulation Station per dispositivi basati su GPU
* Simplemenu/Simplermenu+ per dispositivi provvisti solo di framebuffer (anche per quelli con la GPU se si preferisce)
* RetroArch, più multipli libretro cores
* Supporto per il Wireless e Bluetooth (incluso l'audio) quando supportato dal dispositivo
* Supporto per wireless USB esterno per chi non dispone di scheda wireless interna
* RetroAchievments
* Netplay
* Supporto scraping per copertine/miniature

## Comunità

KNULLI utilizza Discord per le discussioni, se desideri unirti a noi utilizza questo link: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Licenza

KNULLI è una distribuzione Linux composta da molti componenti open source. I componenti sono forniti con le rispettive licenze. Questa distribuzione include componenti concessi in licenza solo per uso non commerciale.

### Software inclusi

Tutto il resto del software viene fornito con la rispettiva licenza di ciascun componente. Queste licenze possono essere trovate nelle fonti del software o nella cartella delle licenze di questo progetto. Le modifiche apportate al software e agli script in bundle da parte del team KNULLI vengono concesse in licenza secondo i termini del software modificato.

### Kernel binari e bootloader

Le versioni per alcuni dispositivi includono kernel e/o bootloader che non hanno codice sorgente disponibile perché il produttore non li ha pubblicati. In questi casi la pagina specifica del dispositivo include le istruzioni per estrarle dal firmware di serie.

## Ringraziamenti

Questo progetto non è il lavoro di una persona ma è il lavoro di molte persone di tutto il mondo che hanno sviluppato le componenti open source senza le quali questo progetto non potrebbe esistere. Un ringraziamento speciale a Batocera, muOS, JelOS, CoreELEC, LibreELEC e agli sviluppatori e ai contributori della comunità open source.
