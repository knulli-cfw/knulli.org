# :material-layers-plus: KNULLI'ye Oyun Ekleme

KNULLI'nin birkaç oyun ekleme seçeneği vardır ve seçeceğiniz seçenek, sahip olduğunuz cihaza ve mevcut işlevselliğine bağlı olarak değişir *(Örneğin, bazı cihazlar ağ yeteneklerine sahip olmadığı için ağ aktarımı seçeneğini kullanamaz)*. Cihazınızda varsayılan oyun dizinlerini oluşturmak için '`CREATE GAME DIRECTORIES`' seçeneğini `System Settings` menüsünde seçin.

Bu sayfa, tüm olası seçenekleri belgelemeyi ve hangi seçeneğin ne zaman kullanılacağını belirtmeyi amaçlamaktadır.

!!! note "Her sistem için hangi belirli dosyaların gerektiği ayrıntıları için lütfen bu viki'nin sistemler bölümündeki ilgili sayfalara bakın."

## Depolama Modları

KNULLI, oyunlar için dahili ve harici depolama (microsd) kullanımını destekler. OS'de oyunları kullanılabilir yapmak için dosya sisteminin yeteneklerine dayanan farklı özellikler sunuyoruz. KNULLI depolama modlarını desteklemek için, oyun kartınızda "roms" adlı bir dizinde oyunları iç içe yerleştirir. Bu yol üzerinde bulunan tüm oyunlar OS'de kullanılabilir durumda olacaktır.

### Birleştirilmiş Depolama

Linux Ext4 olarak biçimlendirilmiş bir microsd kullandığınızda, KNULLI kullanıcılara iç ve dış depolamayı birleştirme yeteneği sunar ve kullanıcıların oyunları depolamak için her iki kartı da kullanmalarına izin verir. Bu modun iki tercihi bulunmaktadır, harici (varsayılan) ve dahili.

* Harici Tercih
  * Bu mod, `/userdata/roms` 'e yazılan her şeyi harici microsd'nize kaydeder (`/userdata/games-external/roms`).
* Dahili Tercih
  * Bu mod, `/userdata/roms` 'e yazılan her şeyi dahili depolama biriminize (`/userdata/games-internal/roms`) kaydeder.

> Not: *Birleştirilmiş Depolama varsayılan olarak devre dışıdır.*

### Basit Depolama

Birleştirilmiş Depolama devre dışı bırakıldığında veya ExFAT veya FAT32 kullanıyorsanız, KNULLI harici kartınızı `/userdata/games-external` 'e bağlar ve `/userdata/games-external/roms` 'ın içeriğini `/userdata/roms` 'da kullanılabilir hale getirir.

### Sorun Giderme

* Oyunların EmulationStation'da görünmemesine neden olabilecek bir çakışma yaşanabilir. Bu genellikle `/usr/bin/cleanup_overlay` komutunu çalıştırarak çözülebilir. Not: Bu cihazınızı yeniden başlatacaktır.
* `CREATE GAME DIRECTORIES` komutunu çalıştırdıktan sonra /userdata/roms içinde oyun klasörleri görünmüyorsa, microsd'nizde `roms` dizininin olduğundan emin olun.

## Seçenek 1: Ağ Aktarımı

Ağ aktarımı, internete bağlanabilen herhangi bir cihazda kullanılabilir (bu, yerel ağdaki cihazlar ve VPN IP'si gibi ağa dışardan bir cihaz ekleyebileceğiniz cihazlar da dahil).

Bu seçenek, cihazınızda ağı yapılandırmanızı gerektirir. Ayrıntılar için [Ağ](../../configure/networking)'a bakın. Bu adımları tamamladıktan sonra "Network Settings" menüsünde IP adresinizi not alın.

IP'nizin yanı sıra, ayrıca root şifrenizi de gerekecektir. Bu, Ana Menü'de EmulationStation'da ++"START"++ tuşuna basarak ve ardından `System Settings`'e giderek bulunabilir. Root şifreniz, `Authentication` başlığı altında görüntülenir.

!!! note "Varsayılan olarak root şifresi, her yeniden başlatmadan sonra benzersiz bir karakter dizisine döner. Bunu böyle bırakabilir ve mevcut şifreyi not alabilirsiniz, veya bunu kapatıp kalıcı bir şey olarak ayarlayabilirsiniz."

### HTTP

Ağ ayarlarında Basit HTTP Sunucusunu etkinleştirmek, yerel ağdaki herhangi bir tarayıcıya cihazınızın IP adresini girerek dosya yükleme ve indirme yapmanıza olanak tanır (veya VPN IP'si, ayrıntılar için VPN bölümüne bakın). Kullanıcı adı `root` ve şifre Ana Menü'de `Root Şifresi`'nde bulunabilir.

### SMB

- Windows:
    - Bir Windows Gezgini penceresi açın ve `\\[IP ADRESİ]` yazın; `[IP ADRESİ]`'ni Ağ Ayarları menüsünde görünen IP Adresi ile değiştirin.
    - Kullanıcı adı ve şifre istenecektir. 
    - Kullanıcı adı `root` ve şifreniz `Sistem Ayarları` menüsünde `Root Şifresi`'nden alınır.
- MacOS: 
    - Finder'ı açın ve üst menüden `Git > Sunucuya Bağlan`'ı seçin.
    - Açılan adres çubuğuna `smb://[SİZİN IP ADRESİ]` yazın; `[SİZİ

N IP ADRESİ]`'i Ağ Ayarları menüsünde görünen IP Adresi ile değiştirin.
    - Kullanıcı adı olarak `root` ve şifreniz `Sistem Ayarları` menüsünde `Root Şifresi`'nden bulunabilir.

### FTP

Tercih ettiğiniz FTP programını kullanarak, SFTP bağlantısı kurun. IP Adresi Ağ Ayarları menüsünde görünen IP Adresi olmalıdır. Bağlantı noktasının (port) `22` olduğundan emin olun. Kullanıcı adı `root` ve şifreniz `Sistem Ayarları` menüsünde `Root Şifresi`'nden bulunabilir. 

### Bağlandıktan sonra

- Ağ üzerinden bağlandıktan sonra bir klasör listesi göreceksiniz.  
- `roms` klasörünü açın ve her sistem için oyunlar ve bios dosyalarının yerleştirileceği klasörlerin bir listesini göreceksiniz *(Her sistem için dosyaların nereye yerleştirileceği hakkındaki ayrıntılar için viki'nin sistemler bölümüne bakın)*
- Oyunlarınızı ekledikten sonra, EmulationStation'da görüntülenmelerini sağlamak için ++"START"++ tuşuna basarak Ana Menü'yü açın, ardından `Game Settings`'i açın ve Araçlar başlığı altında `Update Gamelists`'i seçin.

## Seçenek 2: SD Kart

Oyunlar ayrıca bir SD kart aracılığıyla da eklenir. Cihazınıza bağlı olarak bunu yapmanın iki temel yöntemi vardır.

### Cihazınızda 2 SD kart yuvası varsa

- Cihazınız kapalıyken; bir FAT32/ExFAT/ext4 biçimli SD kartı cihazınızın yuvasına 2 takın.
- Cihazınızı açın.
- KNULLI önyükleme işlemini tamamladığında, `System Settings`'de '`Create Game Directories`' seçeneğini seçerek oyun dizinlerinizi oluşturun.
- Şimdi cihazınızı kapatın, SD kartınızı yuva 2'den çıkarın ve PC'nizde açın.
- Bilgisayarınız bir klasör listesi gösterecek, `roms` dizinini açın ve oyunlarınızı ve bios dosyalarınızı yerleştirebileceğiniz her sistem için bir klasör listesi göreceksiniz.
- Oyunlarınızı ekleyin ve SD kartınızı yuva 2'ye geri takın ve KNULLI'yi başlatın.

Eğer cihazınız SD kartınızı görmüyorsa (veya gerekli klasörleri yazmıyorsa), lütfen `System Settings`'i açın ve `Autodetect Games Card`ın ("`Hardware/Storage`" başlığı altında bulunur) açık olduğundan emin olun ve cihazınızı yeniden başlatın.

### Cihazınızda 1 SD kart yuvası varsa

!!! warning "Bu seçenek, KNULLI'yi cihazınızın dahili sürücüsüne kurduğunuz cihazlar içindir. Bu senaryoda bir SD kartı doğrudan depolama olarak kullanabilirsiniz."

- KNULLI'yi dahili sürücünüze kurduysanız, Ana Menü'yü açmak için ++"START"++ tuşuna basın, ardından `System Settings`'i açın ve Donanım/Depolama başlığı altında `Autodetect Games Card`'yı açın.
- Cihazınızı kapatın
- Bir FAT32/ExFAT/ext4 biçimli SD kartı cihazınıza takın.
- Cihazınızı açın.
- KNULLI önyükleme işlemini tamamladığında, `System Settings`'de `Create Game Directories` seçeneğini seçerek oyun dizinlerinizi oluşturun.
- Şimdi cihazınızı kapatın, SD kartınızı çıkarın ve PC'nizde açın.
- Bilgisayarınız bir klasör listesi gösterecek, `roms` dizinini açın ve oyunlarınızı ve bios dosyalarınızı yerleştirebileceğiniz her sistem için bir klasör listesi göreceksiniz.
- Oyunlarınızı ekleyin ve SD kartınızı cihazınıza geri takın ve KNULLI'yi başlatın.

## Seçenek 3: Harici USB Sürücü

KNULLI'nin dahili bir Dosya Yöneticisi bulunmaktadır ve bağlı USB sürücülere erişim sağlayabilir ve dosyaları aktarabilirsiniz.

1. USB sürücünüzü cihazınıza bağlayın
2. Araçlar sistemini açın ve Dosya Yöneticisi'ni seçin
3. `/` 'e kadar yukarı çıkın ve ardından `media`'yı açın - sürücünüzün içeriğini açtıktan sonra listelenecektir
4. Sürücünüzü açın ve içeriğini göreceksiniz
5. Buradan kopyalamak istediğiniz dosyaya gidin ve daha sonra `userdata/roms` dizinine geri dönün ve kopyaladığınız dosyaları uygun klasöre yapıştırın.

## Seçenek 4: Linux İşletim Sistemi

KNULLI'nin depolama sürücüsü ext4 biçimindedir ve doğal olarak linux işletim sistemleri tarafından okunabilir. SD kartınızı bir linux işletim sistemine takmak, dizinlere göz atmanıza ve dosyaları doğrudan eklemenize olanak tanır.
