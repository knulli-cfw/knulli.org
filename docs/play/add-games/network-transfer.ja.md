# :material-wifi-plus: ネットワーク転送

ネットワーク転送は、インターネットまたはローカルネットワークに接続できるあらゆるデバイスで使用できます。（これには、ネットワーク機能を内蔵したデバイスと、外部ドングルを介してネットワーク機能を追加できるデバイスの両方が含まれます。）

このオプションを使用するには、まずデバイスでネットワークを設定する必要があります。詳細については、[ネットワーク](../../configure/networking.md)を参照して進めてください。そちらの手順が完了したら、以下の情報が必要です。

* デバイスのホストネームもしくはIPアドレス
* [ネットワーク](../../configure/networking.md)で説明されているように、追加のセキュリティ対策が実施されている場合、ルートパスワードが必要です。

!!! info "デフォルトの認証情報"

    ネットワークアクセスのためのデフォルトの**ユーザーネーム**は`root`で、**パスワード**は`linux`です。

### Windowsネットワーク(SMB)

!!! info "SMBはサービス化されました"

    KNULLI Gladiator II以降、SMBはサービス化され、必要な時に有効/無効を切り替えることができるようになりました。無効にした場合、多少のバッテリーを節約できます。

    SMBを有効にする場合、*システム設定*から*サービス*を選び、*SAMBA*を有効にしてください。

他のOSと同様、KNULLIはWindowsネットワークプロトコルであるSMB(SAMBAとも呼ばれます)に対応しています。
お使いのコンピューターの種類によって、SMB経由でゲームやその他のデータを転送する方法は異なります。デバイスへのアクセスに成功すると、パーティションを`share` ネットワークドライブとしてアクセスできるようになります。ネットワークドライブは[`/userdata`フォルダ](./game-storage.md)に対応しています。ここに、ゲームなどの全てのデータを保存できます。

#### Windows

すべてのWindowsコンピューターでは、SMBは*Windowsエクスプローラー*に統合されています。

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>ステップ 1a: </strong><em>Windowsエクスプローラ</em>の<em>ネットワーク</em>セクションからKNULLIデバイスを探します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>ステップ 1b: </strong><em>Windowsエクスプローラ</em>のアドレスバーに<code>¥¥KNULLI</code>と入力し、移動します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>ステップ 2: </strong><code>share</code>フォルダを開き、KNULLIデバイスの<code>/userdata</code>を開きます。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>ステップ 3: </strong><code>roms</code>フォルダを開き、各システムsystems(例：SNES)のフォルダを見つけます。</p>
		</td>
	</tr>
</table>

KNULLIデバイスに定期的にアクセスしたい場合は、ドライブ文字を割り当てて「このPC」に表示させることもできます。そうすることで、SDカードの空き容量を確認することも可能です。

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/004-smb-map-network-drive.png">
			<p><strong>ステップ 1: </strong><em>Windowsエクスプローラ</em>で<code>share</code>フォルダを右クリックし、<em>ネットワークドライブの割り当て</em>を選択します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/005-smb-map-network-drive.png">
	    	<p><strong>ステップ 2: </strong>ドライブレターを割り当てて適用します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/006-smb-map-network-drive.png">
			<p><strong>ステップ 3: </strong><em>Windowsエクスプローラ</em>の<em>このPC</em>の中から<code>share</code>フォルダを見つけます。</p>
		</td>
	</tr>
</table>

!!! danger "トラブルシューティング"

    - **ホスト名**は、あなたのデバイス名に対応します。 もし`KNULLI`で動作しない場合、*ネットワーク設定*から**ホスト名**を確認してください。または、、**IPアドレス**を直接アドレスバーに打ち込むことも可能です。
    - もし追加のセキュリティ対策が実施されている場合、認証情報の入力を求められます。
        - 想定されるユーザー名は`root`パスワードは*システム設定*の*セキュリティ*欄に表示されている**rootパスワード**です。
    
#### macOS

- Finderを開き、上部メニューから*移動*を選択し、次に*サーバーに接続*を選択します。
- 表示されたアドレスバーに、`smb://[HOST名]`か`smb://[IPアドレス]`を入力します。(`[HOSTNAME]`や`[IPアドレス]`はあなたのデバイスのもので置き換えてください。).
- 追加のセキュリティ対策が実施されている場合は、認証情報の入力を求められます。
    - 想定されるユーザー名は`root`パスワードは*システム設定*の*セキュリティ*欄に表示されている**rootパスワード**です。

### SCP/FTP

任意のSCP/FTPプログラムを使用して、KNULLIデバイスにSCP/SFTP接続をすることができます。デバイスのホスト名かIPアドレス(デフォルトホスト名は`KNULLI`)を使用し、ポート番号は`22`です。想定されるユーザ名は`root`で、パスワードである*Rootパスワード*は*システム設定*の*セキュリティ*欄ににあります。(デフォルトは`linux`です。).

!!! info "KNULLIの一部は読み取り専用です"

    *SMB*と異なり、SCP/FTPは`/userdata`のみでなく、KNULLIの**全**ファイルシステムにアクセスできます。ただし、`/userdata`の**外にある全て**は**読み取り専用**となっており、編集、変更、移動、削除はできますが、**再起動**毎に**元に戻ります**。

    `/userdata`の外側に永続的な変更を加えたい場合、[パッチとオーバーレイ](../../configure/patches-and-overlays.md)セクションを参照してください。

Windowsユーザー向けには、[WinSCP](https://winscp.net)の使用をお勧めします。WindSCPをインストール後、以下の手順に従ってKNULLIデバイスへのSCP接続を確立してください。*Windowsエクスプローラ*から、ドラッグアンドドロップまたはコピー＆ペーストで直接転送できるようになります。:

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-001.png">
			<p><strong>ステップ 1: </strong>以下の設定で<em>新しい接続</em>から接続先情報を作成し、<em>ログインします</em><p>
			<table>
				<tr>
					<th>ファイルプロトコル:</th>
					<td>SCP</td>
				</tr>
				<tr>
					<th>ホスト名:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>ポート番号:</th>
					<td><code>22</code></td>
				</tr>
				<tr>
					<th>ユーザ名:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>パスワード:</th>
					<td><code>linux</code></td>
				</tr>
			</table>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-002.png">
	    	<p><strong>ステップ 2: </strong>ホストキーの<em>承認</em></p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-003.png">
			<p><strong>ステップ 3: </strong>パスワードの有効期限に関する警告は無視して、そのまま<em>続行</em>してください</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-004.png">
			<p><strong>ステップ 4: </strong> KNULLIデバイスへの接続が正常に確立されました。すぐにすべてのフォルダが表示されなくても<strong>てないでください</strong>。 ウィンドウ左側のフォルダツリーでフォルダ（例： userdata ）を選択すると、その内容が表示されます。</p>
		</td>
	</tr>
</table>

### HTTP

!!! info "現在はサポートされていません"

    現在、ファイル転送におけるHTTPのサポートは提供されておらず、ロードマップにも含まれていません。プルリクエストは歓迎しており、以下のリンクからご参加いただけます[:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)で開発者と交流してください。

### データの転送後

データの転送が完了したら、ゲームリストを更新してデータを利用できるようにしてください。++"Start"++でメインメニューを開き、*ゲーム設定*から*ゲームリストの更新*を選択すると、KNULLIが全てのゲームフォルダを再スキャンし、追加した全てのゲームを識別してEmulationStationで利用できるようにします。
