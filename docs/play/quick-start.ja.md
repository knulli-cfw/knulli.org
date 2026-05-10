# :material-fast-forward: クイックスタートガイド

こんにちは！KNULLIへようこそ！

このクイックスタートガイドでは、ハンドヘルドデバイスでKNULLIを使い始めるための手順を説明します。ハンドヘルドエミュレーションやカスタムファームウェア(CFW)を**完全に初めて**使う方でも、このガイドは**最初のステップ**を順を追って説明します。**上級ユーザー**の方でも、このガイドを通して、KNULLIがこれまで使ってきた他のカスタムファームウェアと**どのように異なるのか**を知ることができます。

## KNULLIのインストール [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

[GitHub repository](https://github.com/knulli-cfw/distribution/releases/latest)で最新のKNULLIリリースを探し、*Installation Package Downloads*セクションから**お使いのデバイス**を見つけてダウンロードし、SDカードに書き込んでください。その後、手動でフォーマットする必要は**ありません**。KNULLI があなたのために自動的に処理します！ SDカードをデバイスのシステム用スロットに挿入し、他のスロットは**何も挿入せず**、デバイスを起動してインストールを完了してください。 (KNULLIがゲームパーティションを拡張してフォーマットするため、初回起動には時間がかかる場合があります。しばらくお待ちください。)

KNULLIのインストール方法についてさらに詳しい情報が必要な場合は、[インストール](./install.md)セクションを参照してください。

## ファーストステップ

最初の手順は、KNULLIデバイスをどのように使用したいかによって異なります。

### 1. データストレージを設定する

KNULLIはシングルSDカードでも問題なく動作します。もしあなたがKNULLIを初めて試してみたい場合、まずはシングルSDカードから始めてKNULLIを探索することをお勧めします。ただし、あなたのデバイスがデュアルSDカードに対応している場合は、長期的には**デュアルSDカード構成**を使用することを**強くお勧めします**。**1枚目のSDカード**には**OS**(オペレーティングシステム)のみが保存されます。ゲームやテーマ、セーブデータその他は**2枚目のSDカード**に保存されます。(ご安心ください: シングルSDカード構成からデュアルSDカード構成に移行することも可能です。[デュアルSDカード移行ガイド](../guides/dual-sd-card-migration.md)。)

すぐにデュアルSDカード構成にしたい場合は、初回起動後に内部ストレージと外部ストレージを手動で**切り替える**必要があることにご注意ください。2枚目のSDカードの詳細な設定方法については[2枚目のSDカード](./add-games/second-sd-card.md)セクションに詳細な手順が記載されています。

既にデータが書き込まれたSDカードをセカンダリSDカードとして使用することも可能です。ただしその場合、**フォルダ構造**が[ゲームストレージ](./add-games/game-storage.md)sectionで説明されているものと一致していることを確認してください。

!!! info "ext4ファイルシステムを使用することもできます"

    もしあなたがLinuxの操作に慣れていて、シンボリックリンクなどを使ってKNULLIの操作をカスタマイズしたい場合などext4ファイルシステムを好む場合は、内蔵フォーマッタを使用してデバイスをext4形式に再フォーマットできます。[フォーマット](./add-games/formatting.md)セクションで詳細を確認できます。

次のステップに進む前にファイルの保存方法を**決定**し、それに応じて**保存場所を準備している**ことを確認してください。

### 2. Wi-Fiを設定する(任意)

++"Start"++ボタンを押してメインメニューを開き、*ネットワーク設定*に進んでください。そこでWi-Fi接続を設定できます。(Wi-Fiの設定方法やセキュリティ強化に関する詳しい手順は、[ネットワーク](../configure/networking.md)セクションを参照してください。)

!!! danger "トラブルシューティング"

    KNULLIデバイスをWi-Fiに接続できない場合は、ルーターでWPA2+WPA3暗号化を無効にし、代わりにWPA1+WPA2を使用してください。

	または、 WPA2+WPA3で保護されたWi-Fiに接続できる可能性のある、最新の実験的サービスをお試しください。メインメニューを表示し、*システム設定*、*サービス*の順に進み、*WIRELESS_HYBRID_FIX*を有効にしてください。この機能は**実験的なもの**であることにご注意ください。

### 3. ゲームとBIOSを追加する

ここでゲームを追加できるようになります。[ゲームストレージ](./add-games/game-storage.md)セクションで、KNULLIのフォルダ構造をよく理解しておくことを強く推奨します。

ファイルシステムを**ext4**に変更していない限り、KNULLIデバイスの電源を切り、ゲームが保存されているSDカードを取り出してコンピューターに挿入するだけで済みます。そうすれば、すべてのゲームをSDカードに直接コピーできます。

ワイヤレス接続を希望するか、**ext4**を使用する場合は、**ネットワーク転送**を使用します。 Windowsでは、**Windows エクスプローラ**を開き、**KNULLI**デバイスを**ネットワーク**欄から探します。デバイスが表示されない場合、アドレスバーに`¥¥KNULLI`と入力します。**MacOS**では、*移動*を*Finder*で選択し、*サーバに接続*を選択、アドレスバーに`smb://KNULLI`を入力します。(もしホスト名を手動で変更した場合、そのホスト名を探してください。)

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>ステップ 1a: </strong><em>Windows エクスプローラ</em>の<em>ネットワーク</em>欄でKNULLIデバイスを探します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>ステップ 1b: </strong><em>Windows エクスプローラ</em>のアドレスバーに<code>¥¥KNULLI</code>と入力し、デバイスを探します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>ステップ 2: </strong>KNULLIデバイスの<code>share</code>フォルダを開き、<code>/userdata</code>の内容を確認します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>ステップ 3: </strong><code>roms</code>フォルダを選択し、各システム(e.g., SNES)のサブフォルダを探します。</p>
		</td>
	</tr>
</table>

いずれにしても、ローカルハードディスクドライブからKNULLIデバイス上の対応するフォルダにゲームファイルとBIOSファイルをドラッグ＆ドロップするだけで済みます。ゲームの追加方法については、[ゲームの追加](./add-games/index.md)セクションでより詳細な手順とその他の代替ソリューションを参照できます。

### 4. PortMasterをインストールする(任意)

Portsに興味がある場合、PortMasterをインストールすることをお勧めします。Wi-Fiに接続されていることを確認し、*Ports*欄に移動して、*Install PortMaster*を見つけて起動してください。その後、*Ports*欄に*PortMaster*が表示されます。 (PortMasterのインストール方法と実行方法の詳細については、[PortMaster](../systems/portmaster.md)セクションを参照してください。)

!!! info "PortMasterインストーラが見つかりません"

    *Ports*欄に*Install PortMaster*が見つからない場合、[PortMaster](../systems/portmaster.md)セクションの手順に従ってください。

### 5. メディアをスクレイピングする (任意)

ゲームを全て追加してインストールした後、**パッケージ画像の追加**、説明テキスト、その他**メタデータ**をゲームに追加したい場合、KNULLIにはフル機能の**スクレイパー**が付属しています。このスクレイパーは、**ScreenScraper**, **TheGamesDB** and **ArcadeDB**をスクレイピングソースとしてサポートしています。(スクレイピング手順については、[スクレイピング](./scraping.md)セクションを参照してください。)

### 6. Retro Achievementsを設定する(任意)

Retro Achievementsを獲得するには、Retro Achievementsアカウントにログインする必要があります。コントローラの++"START"++ボタンを押し、*ゲーム設定*上部の*RetroAchievement設定*に進み、認証情報を入力してください。Retro Achievementsはインターネット接続時のみ有効です。(Retro Achievementsの詳細については、[Retro Achievements](./retro-achievements.md)セクションを参照してください。)

## プレイ！！

おめでとうございます！これでプレイ開始の準備が整いました！どんな気分ですか？このようなデバイス/CFWを初めて使用する場合は、最初のゲームを起動する前に**ホットキーショートカット**を覚えることを強くお勧めします([ホットキーショートカット](./hotkey-shortcuts.md) セクションを参照してください。)それ以外は準備完了です！

KNULLIでゲームを楽しんでいただければ幸いです！

!!! info "あなたは一人じゃありません！"

    何か問題が発生したとしても心配しないでください。あなたは独りではありません！Wikiでヘルプを探したり、[FAQ](../faq/index.md)を確認したり、私たちに合流してください。:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)で、皆様からの質問に答えられるよう努めます。
