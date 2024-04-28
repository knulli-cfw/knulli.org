# :material-frequently-asked-questions: Sıkça Sorulan Sorular

## KNULLI Hakkında

### S: KNULLI nedir?
C: KNULLI, retro oyun cihazları için özel bir firmware'dir (elde taşınabilirler, masaüstü emülasyon cihazları vb.). [Batocera](https://batocera.org)'nın bir fork'u olarak geliştirilmiştir. Knulli aşağıdaki kategoriler altındaki cihazları desteklemeye çalışmaktadır:

* Açık kaynaklı kernel ve/veya u-boot kaynakları olmayan cihazlar
* Kaynağı olan ancak kerneli ana akım olmayan ve/veya çok eski olan cihazlar (örneğin, Egret II Mini gibi BSP kernel 3.4'e sahip olan cihazlar)
* GPU desteği olmayan veya desteklenmeyen GPU'ya sahip ve bu yüzden framebuffer'in tek seçenek olduğu cihazlar
* Sahip olduğum bir cihaz için özelleştirilmiş firmware (CFW) oluşturmaya karar verdim

---

### S: Peki, bu neden bir fork ve değişiklikleri batocera'ya geri birleştirmiyorsunuz?
C: Çünkü batocera lisansı, kapalı kaynaklı çekirdeklerin dağıtıma eklenmesine izin vermez.

---

### S: Başka farklar var mı?
C: Hedef, batocera ile uyumluluğu sürdürmek olsa da, düşük güçlü cihazlar veya cihazların performansını etkileyen bazı özelliklerden fayda sağlamayan cihazlar üzerinde odaklanmaktır. Örneğin, düşük belleğe sahip cihazlar (Powkiddy A12/A13 veya RG35XX Classic gibi 256MB). Ayrıca, [JelOS](https://jelos.org)/[Rocknix](https://github.com/rocknix), [EmuELEC](https://github.com/EmuELEC) vb. mevcut özellikleri eklemek isteme niyeti de bulunmaktadır.

### S: En son sürümü nereden indirebilirim

C: İndirmeler bölümünü kontrol edin (Daha sonra eklenecektir)

---

### S: Hangi cihazlar destekleniyor?

C: Desteklenen cihazların listesini kontrol edin

---

### S: Kendi romlarımı eklemek istiyorum ama Windows/Mac bilgisayarım "roms" disk bölümünü göremiyor 

C: KNULLI varsayılan olarak ikinci disk bölümünü Linux EXT4 dosya biçimi ile biçimlendirir. Bu biçim genellikle Windows/Mac altında okunamaz/bağlanamaz. Bunun için aşağıdaki yaklaşımlardan birini kullanmanız gerekmektedir:

* Windows/Mac için Paragon EXTFS kullanın. Bu araç ücretsiz değildir ancak EXT2/3/4'e sorunsuz erişim sağladığı için önerilir
* Windows için DiskGenius kullanın. Önerilmez. DiskGenius kötü performans sergiler ve disk bölümünü ve içeriğini bozmaya eğilimlidir
* İkinci bölümü FAT32 olarak biçimlendirin:
    * PC/MAC'inize SDCARD'ı takın
    * Windows üzerinde, disk bölüm aracını açın ve ikinci bölümü (SHARE) FAT32 olarak silin/biçimlendirin
    * Maalesef Mac'te, bölümü tamamen yeniden biçimlendirmek için terminali kullanmanız gerekecek. Disk Utility'yi açın ve usb'nin disk numarasını ve bölümünü (örn. disk4s2) belirtin. Ardından, terminali açın ve aşağıdaki komutla bölümü yeniden biçimlendirin:
   ```sudo diskutil eraseVolume ms-dos SHARE /dev/disk4s2```
    * SDCARD'ı bilgisayarınızdan çıkarın ve tekrar RG35XX'e takın
    * Cihazı açın
    * KNULLI, disk bölümünü doğru içerikle dolduracaktır. Sistem başladıktan sonra cihazı kapatıp bilgisayarınıza takarak bios/romlarınızı veya diğer içerikleri ekleyebilirsiniz.

---

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

### S: X cihazını destekliyor musunuz? X cihazı için destek ekleyecek misiniz?
C: Şu anda desteklenen cihazların listesini burada bulabilirsiniz: [Cihazlar](../devices)

Eğer ilgilendiğiniz cihaz bu listede yoksa, henüz hiç kimse onun için destek eklememiştir demektir. Peki neden? Bir cihaz için destek eklemek için (1) onu eklemek istememiz gerekmekte 😊 ve (2) cihaza doğrudan erişimimizin olması gerekmektedir.

Ancak, ilgilenen herkes KNULLI'ye bir cihaz için destek ekleyebilir! Eğer yeni bir cihaz için destek eklemek istiyorsanız lütfen buradan başlayın: [Katkıda Bulunmak](../contribute)

---

### KNULLI'nin yeniden dağıtım lisansı
C: KNULLI, işimizin kötüye kullanılmasını önlemek için ticari olmayan CC BY-NC-SA 4.0 kopya hakkı lisansı (copyleft license) kullanıyor. Cihaz üreticileri ve diğerleri, bizim açık iznimiz olmadan cihazlarında bunu paketleyemezler.

---

##### KNULLI'nin Satışı
KNULLI markası sadece ticari olmayan kullanım için lisanslanmıştır. Satılmak veya herhangi bir şekilde ücret eklenmek kesinlikle yasaktır. Bu tartışmaya kapalıdır.
