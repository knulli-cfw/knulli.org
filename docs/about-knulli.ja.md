# KNULLIについて :material-gamepad:

こんにちは！KNULLIへようこそ！

KNULLIは、レトロゲーム機向けのカスタムファームウェア（CFW）です。非常に有名な[Batocera](https://batocera.org/)をベースに開発され、メインラインのLinuxカーネルと互換性がない、あるいはデバイス固有の特別な対応が必要な携帯型デバイス向けに最適化されています。

レトロゲーム初心者の方もご安心ください！初期設定は最初は少し難しく感じるかもしれませんが、すぐにコツをつかめます。Wikiが手順を丁寧に解説しますのでご安心ください。[クイックスタートガイド](./play/quick-start.md)にアクセスして、手順通りにすすめていけば、すぐにKNULLIのインストールが完了し、ゲームが起動します！

ただし、もしあなたに他のカスタムファームウェアの使用経験がる場合、KNULLIが他のカスタムファームウェアと異なる動作をする可能性があるため、簡単に説明します。KNULLIが自分に合っているかどうかを確認したい場合は、以下のセクションをご覧ください。:

* ["KNULLIを絶対に試すべきだ！"](#youve-got-to-try-knulli)
* [内蔵機能](#built-in-features)
* [EmulationStationを介したエミュレーターのセットアップ](#set-up-your-emulators-via-emulationstation)
* [厳密なフォルダ構造](#strict-folder-structure)

## "KNULLIを絶対に試すべきだ！" { #youve-got-to-try-knulli }

我々の友人である[TechDweeb](https://www.youtube.com/@TechDweeb)が、KNULLIを使い始めるための非常に包括的なビデオガイドを作成しました。（TechDweebさん、ありがとうございます！）KNULLIについて知りたい、その機能について学びたい、実際に動作している様子を見たいという方は、このビデオがまさに探していたものかもしれません。

<iframe width="560" height="315" src="https://www.youtube.com/embed/GJQnhkNd9kU?si=bSP_jlUffjkhP4H1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## 内蔵機能 { #built-in-features }

KNULLIには多くの組込み機能が搭載されています。:

* KNULLIには多数の異なるエミュレータとPorts（PortMasterを含む）が付属しており、[native Pico-8](./systems/pico-8.md)もサポートしています。
* ScreenScraper, TheGamesDB and ArcadeDBからメタデータやメディア(スクリーンショット、ジャケット画像、ビデオ、詳細説明、その他)を直接[スクレイピング](./play/scraping.md)できます。
* [RetroAchievements](./play/retro-achievements.md)を収集して確認できます。
* あなたのデバイスが対応していれば、[Bluetooth](./configure/bluetooth.md)コントローラやヘッドホンを接続できます。
* KNULLIは、HDMI出力(あなたのデバイスが対応していれば)を使用して大画面でゲームをプレイすることをサポートしています。
* KNULLIは、SMB(Windowsに標準搭載されているファイル共有プロトコル)を介してユーザーデータを利用可能にすることで、[ネットワーク転送](./play/add-games/network-transfer.md)を可能にしています。
* KNULLIは、簡単にオンオフできる[ベゼル装飾](./configure/customization/bezel-decorations.md)を搭載しています。
* 様々な[テーマ](./configure/customization/themes.md)を切替えることができます。
* 特定のキーワードや属性に基づいてゲームを自動的にグループ化する[ダイナミックコレクション](./configure/collections.md)を使用して、ゲームを整理できます。
* 厳選したゲームを集めた[カスタムコレクション](./configure/collections.md)を作成することもできます！
* KNULLIには、異なるKNULLI/Batoceraデバイス間でセーブデータや状態を同期するためのSyncthingが付属しています。
* あなたのデバイスに[RGB LEDs](./configure/rgb-leds.md)が搭載されている場合、KNULLIならそれらを設定したり、バッテリーインジケーターとして使用することもできます。
* エキスパートユーザーは、[SSH](./configure/ssh.md)経由でKNULLIにアクセスできます。
* KNULLIは、折りたたみ式デバイスの[蓋を閉じた](./configure/power-management.md)ときに、スタンバイモードに移行するか、正常にシャットダウンすることを可能にします。

## EmulationStationを介したエミュレーターのセットアップ { #set-up-your-emulators-via-emulationstation }

KNULLIのフロントエンドはEmulationStationと呼ばれます。これは非常に包括的なGUIで、様々なテーマが用意されています。KNULLIの主要機能の一つは、EmulationStation上で**システムごと**、または**ゲームごと**にエミュレーターを直接設定できることです。

他のカスタムファームウェア（CFW）では、各エミュレーターのGUI(ほとんどの場合は**RetroArch**)を使用してエミュレーターを設定する必要があります。しかし、KNULLIはRetroArchのGUIに**頼らない**ことを推奨しています。KNULLIは、EmulationStationで設定した内容に基づいて、起動時に各ゲームのエミュレーター設定を個別に**生成します**。

エキスパートユーザーは、ゲーム中にRetroArchのGUIにアクセスすることも可能です。[**オーバーライド**](./configure/customization/shaders.md)と[**リマップ**](./configure/retroarch/controls.md)ファイルは、**ゲーム毎**、または**システム毎**に使用でき、RetroArchのGUIで直接手動で調整を行うこともできます。しかし、KNULLIの主要機能の1つは、エミュレーション設定をEmulationStationに集約することで、個々のエミュレータのGUIを操作する手間を省くことにあります。

## 厳密なフォルダ構造 { #strict-folder-structure }

KNULLI他の多くのCFWにはない多くの組込み機能が搭載されています。ただし、KNULLIはこれらを全て動作させるために、非常に**厳密なフォルダ構造**に依存しています。ゲーム、BIOSファイル、セーブデータ、テーマなどは、KNULLIが必要とする場所に正確に配置する必要があります。もし既存のライブラリをKNULLIに移行したい場合は、そのライブラリをKNULLIのフォルダ構造に適合させる必要があります。 - 他に方法はありません。KNULLIが**大文字と小文字を区別する**ことに注意してください。
