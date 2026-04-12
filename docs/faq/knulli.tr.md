# :material-frequently-asked-questions: KNULLI Hakkında

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

### S: X cihazını destekliyor musunuz? X cihazı için destek ekleyecek misiniz?
C: Şu anda desteklenen cihazların listesini burada bulabilirsiniz: [Cihazlar](../devices/index.md)

Eğer ilgilendiğiniz cihaz bu listede yoksa, henüz hiç kimse onun için destek eklememiştir demektir. Peki neden? Bir cihaz için destek eklemek için (1) onu eklemek istememiz gerekmekte 😊 ve (2) cihaza doğrudan erişimimizin olması gerekmektedir.

Ancak, ilgilenen herkes KNULLI'ye bir cihaz için destek ekleyebilir! Eğer yeni bir cihaz için destek eklemek istiyorsanız lütfen buradan başlayın: [Katkıda Bulunmak](../community/contribute.md)

---

### KNULLI'nin yeniden dağıtım lisansı
C: KNULLI, işimizin kötüye kullanılmasını önlemek için ticari olmayan CC BY-NC-SA 4.0 kopya hakkı lisansı (copyleft license) kullanıyor. Cihaz üreticileri ve diğerleri, bizim açık iznimiz olmadan cihazlarında bunu paketleyemezler.

---

##### KNULLI'nin Satışı
KNULLI markası sadece ticari olmayan kullanım için lisanslanmıştır. Satılmak veya herhangi bir şekilde ücret eklenmek kesinlikle yasaktır. Bu tartışmaya kapalıdır.
