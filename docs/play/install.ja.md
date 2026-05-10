# :material-progress-check: KNULLIのインストール

KNULLIのインストール方法は、お使いのデバイス用のイメージファイルをダウンロードし、それをSDカード（またはデバイスの内部ストレージ）に書き込み、デバイスを起動してインストールプロセスを開始するという手順です。

## ステップ 1: ダウンロード [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* お使いのデバイスに対応した最新バージョンのKNULLIを[リリースページ](https://github.com/knulli-cfw/distribution/releases/latest)からダウンロードしてください。
    * サポートされている各デバイス/プラットフォームのダウンロードリンクは"`Installation Package Downloads`"ヘッダの下にあります。
    * お使いのデバイスに適したイメージをダウンロードしてください。たとえば[RG35XX](../devices/anbernic/rg35xx.md)の場合、`rg35xx`のイメージをダウンロードします。
    * 複数のファイルがある場合は、001、002などのすべてのパートをダウンロードしてください。
    * 不明な点がある場合、[デバイスサポート](../devices/index.md)セクションを参照し、お使いのデバイスに適したイメージをダウンロードしてください。

!!! warning "非対応デバイス"

    あなたのデバイスが`Installation Package Downloads`に記載されて*いない*場合、パブリックリリースはされていません。別のデバイス用のパッケージを使用*しないでください*

## ステップ 2: フラッシュ

* まず、イメージファイルを解凍してください。
* .001、002のように複数ある場合、それらが全て同じフォルダにあることを確認し、[7zip](https://www.7-zip.org/)を使用して.001ファイルを解凍すると、全て解凍されます。
* 次に、イメージ書き込みツールを使用してSDカードに書き込みます。
    * 一般的なイメージ書き込みツールには、[Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/), and [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)などがあります。コマンドラインに慣れている場合、`dd`でも可能です。

イメージング処理中に複数のパーティションが作成され、それらはコンピュータ上で異なるドライブとして表示されます。これらのドライブのほとんどはLinuxオペレーティングシステムからのみアクセス可能で、Windowsからはアクセスできません。

!!! danger "KNULLIパーティションはフォーマットしないでください。"

    Windowsが読み取れないKNULLIパーティションは、Windowsがどれほど強く推奨しても、決してフォーマットしてはいけません。(例：「破損しています」「修復しますか？」など)これらはWindowsが読み取れないパーティションであるために破損していると誤検知しているものです。

フラッシュが正常に完了すると、*BATOCERA*ドライブのみがFAT32形式でフォーマットされ、[update](./update.md)セクションで説明されているように、Windows上で手動アップデートを行うためのアクセスができるようになります。ただし、この場所はOS自体が保存される場所であり、ゲームを保存する場所ではありません。ゲームの追加方法については、*初回起動後*に[ゲームの追加](./add-games/index.md)セクションを参照してください。

!!! warning "SHAREパーティションの拡張"

    フラッシュ中に、*SHARE*パーティションが作成されます。ここにすべてのゲームやその他のデータが保存されます。ただし、*SHARE*パーティションは初回起動時のみフルサイズに拡張されます。SHAREパーティションにアクセスしてゲームを追加するには、 KNULLIを起動してインストールを完了する必要があります。ゲームの追加方法については[ゲームの追加](./add-games/index.md)セクションを参照してください。 - *初回起動後に。*

## ステップ 3: デバイスの起動

* デバイスの電源を切った状態で、SDカードを挿入してください。
    * 2枚目用のSDカードスロットがある場合、初回起動時はそこに何も挿さないでください。
* 電源を入れてください。
    * 注: 一部のデバイスではSDカードが最初に読み込まれるように起動順序を設定する必要がある場合があります。あなたのデバイスが該当するかどうかは、デバイスのマニュアルを確認してください。
* KNULLIはインストールプロセスを自動的に実行します。完了まで少し時間がかかりますので、しばらくお待ちください。一部の手順は完了までに数分かかる場合があります。
* インストールが完了すると、KNULLIのGUIであるEmulationStationが起動します。これで準備完了です!

## Next Steps

* [ネットワーク設定](../configure/networking.md)
* [コントローラ設定](../configure/controls.md)
* [ゲームの追加](./add-games/index.md)
* [スクレイピング](./scraping.md)
* [テーマ](../configure/customization/themes.md)
