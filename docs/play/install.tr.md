# :material-progress-check: KNULLI Kurulumu

KNULLI, cihazınız için bir disk görüntüsü indirerek, bunu bir SD Kart'a (veya cihazınızın dahili depolama alanına) yazarak ve ardından cihazı başlatarak kurulum sürecini başlatarak kurar.

## Adım 1: İndirme [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=En%20Yeni&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=En%20Yeni&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Cihazınız için en son KNULLI sürümünü [yayınlar sayfasından](https://github.com/knulli-cfw/distribution/releases/latest) indirin.
    * Desteklediğimiz her cihaz/platform için indirme bağlantıları "`Kurulum Paketi İndirmeleri`" ("`Installation Package Downloads`") başlığı altında bulunabilir.
    * Cihazınız için doğru disk görüntüsünü indirdiğinizden emin olun. Örneğin; [RG35XX](../devices/anbernic/rg35xx.md) üzerine KNULLI kuruyorsanız, `rg35xx` görüntüsünü indirmelisiniz.
    * Herhangi bir sorunuz varsa, belirli cihazınız için hangi görüntüyü indirmeniz gerektiğini doğrulamak için [Cihaz Desteği](../devices/index.md) sayfasını kontrol edebilirsiniz.

## Adım 2: Yazma

* İlk olarak, indirdiğiniz sıkıştırılmış dosyayı çıkarın.
* Ardından bir görüntüleme aracı kullanarak görüntüyü bir SD Kart'a yazın.
    * Yaygın görüntüleme araçları arasında [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/) ve [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/) bulunmaktadır. Komut satırında bilgiliyseniz, `dd` de kullanılabilir.

## Adım 3: Cihazınızı Başlatın

* Cihazınızı kapalıyken SD Kart'ınızı cihazınıza takın ve ardından cihazınızı açın.
* Not: Bazı cihazlar, SD Kart'ınızın ilk olarak yüklenmesi için önyükleme sırasını (boot order) ayarlamanızı gerektirebilir. Bunun sizin için geçerli olup olmadığını görmek için belirli cihazınızın belgelerine bakabilirsiniz.
* KNULLI kurulum sürecini tamamlayacak ve ardından cihazınızı yeniden başlatacaktır.
* Cihazınız yeniden başladığında doğrudan EmulationStation yüklenecek. Bu noktada cihazınız kullanıma hazırdır!

---

## Ek Notlar

* KNULLI işletim sistemi, LINUX tarafından okunabilen ancak Windows'ta direkt olarak okunamayan bir Ext4 bölümünde saklanmaktadır. Şu anda, Windows'ta birincil KNULLI Ext4 bölümüne erişmek mümkün değildir.
* İkinci bir SD kartı destekleyen cihazlarda, SD kartı Ext4, FAT32 veya exFAT olarak biçimlendirilebilir. KNULLI, önyükleme sırasında ikinci SD kartı otomatik olarak algılayacak ve oyun depolaması olarak kullanılabilir hale getirecektir.
* x86 cihazlarda, KNULLI bir kurulum aracı içerir. Bu kurulum aracı, ES içinde listelenen sistemlerden biri olan araçlar menüsünde bulunabilir.

## Sonraki Adımlar

* [Oyun Ekleme](/play/add-games)
* [Ağ Kurulumu](/configure/networking)
* [Temalar](/configure/themes)
