<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-scarab.png"/>
</div>

# KNULLIへようこそ :material-gamepad:

## 新しいリリースが公開されました！ [![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/knulli-linux/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/knulli-linux/releases/latest)

*"ここへ入ることを許されるのは一人だけ。その真価は内にこそ宿る者である。"*

ついに、KNULLI Scarab のリリースに向けたすべての準備が整いました。私たちKNULLIチームは、この素晴らしい世界へ皆さんをご案内できることを嬉しく、そして誇りに思います。

KNULLI Scarabは、多数の新機能と使い勝手の向上を含む大規模アップデートです。主な変更点は以下のとおりです。

- **KNULLIがAnbernic RG XXシリーズの新しいH700リビジョンを完全サポート
- **BattleXP G350、GKD Pixel 2、Miyoo Flip、Powkiddy X55、Retroid Pocket 5、Flip 2など、多数の新しいデバイスに対応
- **RetroArch を 1.22.2 に更新
- **SEGA Saturn エミュレーションの性能向上のため、Standalone Yabasanshiro を追加
- **Syncthing の統合機能を改善し、手動同期だけでなくゲーム終了時の自動同期にも対応。通知により転送状況も確認できます。
- **新機能 BatteryPlus により、現在のバッテリー状態をより正確に確認可能
- **Silky RGB による新しく改良されたRGBサポート（ありがとう、doughn0さん！）
- **PortMaster を Device Settings メニューから直接インストール可能
- **システムの安定性、パフォーマンス、バッテリー寿命に関する多数のバグ修正と改善

追加された機能、修正点、変更内容の完全な一覧は、[change log](https://github.com/knulli-cfw/knulli-linux/blob/knulli-main/knulli-Changelog.md)をご覧ください。:

!!! warning "メジャーアップデート"

    このバージョンのKNULLIには多数の新機能が含まれており、ファームウェアを再度書き込む（再フラッシュする）必要があります。特に、SDカードのパーティションテーブルを変更する必要があります。

    また、Gladiator II から Scarab の間で多数のファイル名やパスが変更されたため、system フォルダー内の設定ファイルも互換性がありません。

    そのため、クリーンインストールからやり直すことを強く推奨します。ただし、以前のインストール環境からユーザーデータを移行したい場合は、Major Updatesガイドをご覧ください。

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
