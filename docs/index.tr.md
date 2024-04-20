<div class="preview-container">
  <img class="off-glb" src="_inc/images/knulli-booting-up.png"/>
</div>

# KNULLI Viki'ye Hoş Geldiniz :material-gamepad:

KNULLI, retro oyun cihazları için özel bir firmware'dir (elde taşınabilirler, masaüstü emülasyon cihazları vb.). [Batocera](https://batocera.org)'nın bir fork'u olarak geliştirilmiştir. Knulli aşağıdaki kategoriler altındaki cihazları desteklemeye çalışmaktadır:

* Açık kaynaklı kernel ve/veya u-boot kaynakları olmayan cihazlar
* Kaynağı olan ancak kerneli ana akım olmayan ve/veya çok eski olan cihazlar (örneğin, Egret II Mini gibi BSP kernel 3.4'e sahip olan cihazlar)
* GPU desteği olmayan veya desteklenmeyen GPU'ya sahip ve bu yüzden framebuffer'in tek seçenek olduğu cihazlar
* Sahip olduğum bir cihaz için özelleştirilmiş firmware (CFW) oluşturmaya karar verdim

## Özellikler

KNULLI, GPU (GLES desteği) olan cihazları ve sadece framebuffer olanları (eski cihazlar) destekler.

* GPU tabanlı cihazlar için Emulation Station ön yüzü
* Sadece framebuffer desteği olan cihazlar için Simplemenu/Simplermenu+ (GPU tabanlı olanlar için de tercih edilebilir)
* RetroArch ve birden fazla libretro çekirdeği
* Cihaz tarafından desteklendiğinde kablosuz ağ ve Bluetooth desteği (ses de dahil olmak üzere)
* Dahili kablosuz ağ kartı olmayanlar cihazlar için harici USB kablosuz ağ adaptörü desteği
* Eski oyunlar için başarımlar desteği (Retroachivements)
* Ağ bağlantılı çok oyunculu oyun modu (Netplay)
* Oyun kapak görselleri/önizleme resimlerini indirme desteği (Scraper)

## Topluluk

KNULLI, tartışma için Discord ve [:simple-github: GitHub](https://github.com/knulli-cfw/distribution/discussions) tartışma sayfalarını kullanır, katılmak isterseniz lütfen bu bağlantıyı kullanın: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Lisanslar

KNULLI, birçok açık kaynak bileşeninden oluşan bir Linux dağıtımıdır. Bileşenler, ilgili lisansları altında sağlanmaktadır. Bu dağıtım, yalnızca ticari olmayan kullanım için lisanslanmış bileşenleri içerir.

### Paketlenmiş Yazılımlar
Diğer tüm yazılımlar, her bileşenin ilgili lisansı altında sağlanmaktadır. Bu lisanslar, yazılım kaynaklarında veya bu projenin lisanslar ("licenses") klasöründe bulunabilir. KNULLI ekibi tarafından paketlenmiş yazılım ve komut dosyalarının değiştirilmiş sürümleri, değiştirilen yazılımın koşulları altında lisanslanmıştır.

### Binary Çekirdekler ve Önyükleyiciler

Bazı cihazlar icin hazırlanan sürümler, üretici çekirdekler ve/veya önyükleyicileri yayınlamadığı için kapalı kaynak kodlu çekirdekler ve/veya önyükleyiciler içerir. Bu durumlarda, cihaza özel sayfa bunları stok firmware'den çıkarmak için talimatları da içermektedir.

## Katkıda Bulunanlar

Bu proje bir kişinin değil, dünyanın dört bir yanından birçok kişinin geliştirdiği açık kaynak kodlu bir projedir. Bütün bu parçalar bir araya gelmeseydi bu proje var olamazdı. Batocera, muOS, JelOS, CoreELEC, LibreELEC ve açık kaynak topluluğundaki geliştiricilere ve katkıda bulunanlara özel olarak teşekkürler.
