# :material-frequently-asked-questions: Sıkça Sorulan Sorular

### S: Romlar/bios içeriğimi ikinci SDCARD'a ekleyebilir miyim?

C: Evet! Yeni veya boş bir SDCARD'ınız varsa, RG35XX'in ikinci yuvasına SDCARD'ı takabilir ve şu adımları izleyebilirsiniz:

* KNULLI'yi başlatın ve ``Settings -> System Settings -> Storage Device``'a gidin ve ``INTERNAL``'ı ikinci kartınıza, örneğin ``SHARE - 25.6G`` olarak değiştirin.
* Ayarlar menüsünden çıkın ve değişikliklerin uygulanması için yeniden başlatmanız gerektiğini belirtecek olan sistem size gösterilecektir.
* Cihazınızı yeniden başlatmak için menüye gidin ve ``Settings -> Quit -> Restart System`` seçin. Sistem yeniden başlayacak, ikinci kart artık batocera için kullanılacak ve klasör yapısı (romlar, bios, vb.) oluşturulacaktır.
* Şimdi konsolu kapatıp, kartı bilgisayarınıza takın ve bios & romlar içeriğinizi kopyalayın.

---

### S: ikinci SDCARD'da Garlic ile birlikte Rom'larım/bios'um var. Bu kartı KNULLI için yeniden kullanabilir miyim?

C: KNULLI, varsayılan olarak rom klasörlerinin ve konumlarının farklı bir ismini bekler, ancak @XQuader sayesinde Garlic yapısına uyumlu yapılandırma oluşturan bir betik (script) mevcuttur. Daha fazla bilgi için [bu Reddit gönderisini](https://www.reddit.com/r/RG35XX/comments/12zxs8t/how_to_get_garlicos_roms_folders_working_in/) inceleyebilirsiniz.

---

### S: Kurulum çalışıyor gibi görünüyor, bölümün genişletildiğini görebiliyorum ama çok uzun sürüyor

C: 64GB'lık bir SDCARD ile genişletme ve ilk kez önyükleme işlemi 1 ila 1:30 dakika sürer. SDCARD'ınız daha büyükse, çok daha uzun sürebilir, ancak 5 dakikadan fazla sürerse, bir şeylerin iyi gitmediği ihtimali yüksektir. Sadece reset tuşuna basın ve sistem devam edecektir. Bu durumda bölüm genişletilmemiş olabilir. Bunun için kartı PC/Mac/Linux bilgisayarınızda manuel olarak genişletmeniz gerekecektir.

---

### S: En son sürüme güncelledim/güncelledim ve cihazın sesi yok, ya da kontrollerim yanıt vermiyor, ya da başka bir şey beklediğim gibi çalışmıyor:

C: Eğer eski bir sürümden güncellediyseniz, ``batocera.conf`` dosyasını SDCARD'ınıza kopyalamanız gerekebilir:
  * Tek bir SDCARD kullanıyorsanız, ikinci bölümü (``SHARE``) PC/Mac/Linux bilgisayarınıza bağlayın ve dosyayı ``system/batocera.conf``'a kopyalayın
  * İki SDCARD kullanıyorsanız, ikinci SDCARD'ı PC/Mac/Linux bilgisayarınıza bağlayın ve dosyayı ``system/batocera.conf``'a kopyalayın

---

### S: Her sürümü flaşlamam mı gerekiyor yoksa güncelleyebilir miyim?

C: Çoğu sürüm için güncelleyebilirsiniz:
  * Boot.tar.xz dosyasını yayınlar sayfasından indirin
  * Dosya içeriğini çıkarın
  * KNULLI SDCARD'ınızı PC/Mac/Linux bilgisayarınıza bağlayın
  * ``boot/knulli`` dosyasını silin (bu dosyanın yedeğini alabilirsiniz, böylece önceki sürüme geri dönebilirsiniz)
  * Çıkarılan boot.tar.xz içeriğini SDCARD'a kopyalayın

---

### S: NDS romlarını çalıştırmaya çalışıyorum ancak başlatmaya çalıştığımda konsol emulationstaion'a geri dönüyor. Drastic kullanılabilir mi?
A: Şu anda Drastic, NDS romları için en iyi emülatördür. Ancak, romları doğrudan NDS romları menüsünden başlatmak desteklenmiyor. Drastic'i portlar menüsünden başlatmak için [bu GitHub sorununa](https://github.com/rg35xx-cfw/rg35xx-cfw.github.io/issues/25#issuecomment-1526845570) bakın. Betik romlar/ports'a eklendikten sonra, bağımsız drastic emülatörünü başlatabilir ve ardından romlarınızı bulmak için ``/userdata/roms/nds`` dizinine gidebilirsiniz. Romların .nds formatında sıkıştırılmamış olması gerektiğini unutmayın.
Desmume ve melonds da çalışıyor ancak performansı Drastic ile kıyaslandığında çok iyi değil.

---