<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator-ii.png"/>
</div>

# KNULLIへようこそ :material-gamepad:

## 続編の時間だ! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"これがローマの英雄への扱いなのか？"*

ええ、そのとおりです！ **KNULLI Gladiator**は大好評だったので、続編が出るのは必然でした。この度、**KNULLI Gladiator II**を発表できることを大変嬉しく思います！

新バージョンは KNULLI Gladiatorのアップデートで、 エミュレータ等は同じバージョンを使用しています。 しかし、新バージョンにはいくつかのバグ修正と利便性の向上が含まれています。 中でも特筆すべきなのは Gladiator IIでは、ついに我々は**OTA (over the air) アップデート**が導入され、今後のアップデートをデバイス上で直接インストールできるようになることです！

もちろん確約はできませんが、再フラッシュが必要となるような**大きな**変更がない限り、今後のKNULLIアップデートは**全て**OTAでインストールできるようになります。(ただし、開発サイクルが短縮される**わけではありません**！ **stable**アップデートでは、約3～4か月毎にアップデートが提供される予定です。)

新機能、修正点、変更点の完全なリストは[change log](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md)に記載されています。以下に主要な変更点をいくつかご紹介します。:

### KNULLI Gladiator IIの新機能

- Anbernic RG34XX SP, RG35XX Pro and Powkiddy V90S, V20への**デバイスサポート**の追加
- *更新とダウンロード*メニューから**[OTAアップデート](./play/update.md)** 可能になり、今後のアップデートが大幅に容易になります。
- **SMB (SAMBA)**はデフォルトで無効になっていましたが、[**サービス**からon/off可能になりました](./play/add-games/network-transfer.md) 。
- **内蔵コントローラ**を常にプレイヤー1に[自動割り当て](./configure/controls.md)するトグルを追加しました。また、 **USBコントローラアサイン**の問題を修正しました。
- **A133**デバイス(TrimUI Brick、 TrimUI Smart Pro)における **スタンドアロン ドリームキャスト/PSP エミュレータ**に関する問題を修正しました。
- ベゼル装飾
    - *ベゼル(画面外装表示)*が*自動*になっている場合、**自動的に有効になります**。
    - **H700**デバイス(anvernic RGXXシリーズ)上の**スタンドアロン**エミュレータがサポートされるようになりました。
    - **GBA**専用の*Default-Knulli-SP*セットが付属し、4:3画面折りたたみデバイスで**SP**の雰囲気を演出します。
- SDカードの整合性をチェックするための**ディスクチェック**ユーティリティが、*システム 設定* → *開発者オプション* に追加されました。
- **ソフトリセット**の[ホットキー](./play/hotkey-shortcuts.md)を使用すると、EmulationStationを強制的に再起動可能になりました。
- **[Factory reset](./configure/reset-to-factory-settings.md)**でEmulationStationから工場出荷時設定へのリセットが可能になりました。
- 多数の**バグ修正**とシステムの安定性、パフォーマンス、バッテリー寿命を**改善しました**。

!!! warning "メジャーアップデート"

    このバージョンのKNULLIには多くの機能が搭載されており、**ファームウェアの書き換えが必要です。** 具体的には、今後のOTAアップデートに対応するため、`BATOCERA`の**パーティションサイズを増やす必要があります。**

    **Gladiator**から**Gladiator II**に**アップデートする**場合、`system`フォルダはそのまま保持され、以前の設定も全て引き継がれます。両バージョン間での互換性の問題は発生しません。

    その他のユーザーは、クリーンインストールで最初からやり直すことを**強くお勧めします**。 もし以前のインストール環境にユーザーデータを移行したい場合は、[メジャーアップデート](./guides/major-updates.md)を参照してください。

もし**NULLIを初めて**利用する方で、すぐに使い始めたい場合は[クイックスタートガイド](./play/quick-start.md)を参照してください。インストール方法やファーストステップについて詳しく説明しています。

いずれにしても、NULLIでゲームを楽しんでもらえれば幸いです！

## KNULLIについて

KNULLIは、レトロゲーム機(携帯型、据え置き型、その他)向けのカスタムファームウェアです。[Batocera](https://batocera.org)のフォークとして開発されました。 以下のカテゴリのうち少なくとも1つに該当するデバイスのサポートを目指しています。:

* オープンソースのカーネルおよび/またはU-Bootのソースコードが入手できない
* ソースコードは存在するが、カーネルがメインラインではないか、あるいは古すぎる(例えばEgret II MiniのようなBSPカーネル3.4を搭載したデバイス)
* GPUのサポートがないか、GPUがサポートされていないためにフレームバッファが唯一の選択肢
* 我々が所有しているデバイスで、そのためのカスタムファームウェア(CFW)をビルドすると決めた

## 特徴

KNULLIはGPU搭載デバイス(GLES support)と、フレームバッファのみ搭載しているデバイス(レガシー)の両方をサポートしています。

* GPU搭載デバイス向けEmulation Stationフロントエンド
* フレームバッファのみ搭載しているデバイス(必要に応じてGPUデバイスにも対応)向けSimplemenu/Simplermenu+
* RetroArchと複数のlibretroコア
* デバイスが対応している場合、ワイヤレスとBluetooth(オーディオ含む)をサポート
* 内蔵ワイヤレスカードを搭載していない場合のための外部USBワイヤレス接続(ドングル)
* Retroachievments(実績)
* ネットプレイ
* パッケージ、サムネイル スクレイパーのサポート

## コミュニティ

KNULLIは議論にDiscordを使用しています。参加を希望する方はこちらのリンクを利用してください。[:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## ライセンス

KNULLIは多数のオープンソースコンポーネントで構成されたLinuxディストリビューションです。各コンポーネントはそれぞれのライセンスに基づいて提供されています。このディストリビューションには、非商用利用のみが許可されているコンポーネントが含まれています。

### バンドル
その他の各ソフトウェアは、各コンポーネントのライセンスに基づいて提供されます。ソフトウェアのソースコードまたはこのプロジェクトのライセンスフォルダに記載されています。KNULLIチームによるバンドルソフトウェアおよびスクリプトの変更は、変更対象ソフトウェアのライセンス条件に基づいて行われます。

### バイナリカーネルとブートローダー

一部のデバイス向けリリースには、メーカーがソースコードを公開していないため、入手できないカーネルやブートローダーが含まれています。そのような場合は、デバイス固有のページに、標準ファームウェアからそれらを抽出するための手順が記載されています。

## クレジット

このプロジェクトは一人の力によるものではなく、世界中の多くの人々がオープンソースの基盤となる部分を開発し、このプロジェクトが成り立つように貢献してくれたおかげです。Batocera、muOS、JelOS、CoreELEC、LibreELEC、そしてオープンソースコミュニティの開発者や貢献者の皆様に心より感謝申し上げます。
