# :material-console: SSH

!!! info "SSHが利用可能になりました"

    KNULLI ScarabからSSHがいつでも有効無効を切り替えられるようになりました。必要ないユーザーは無効にすることでバッテリーを多少節約できます。

    SSHを有効にするには、*System Settings*の*Services*から*SSH*を有効にしてください。

上級ユーザーはKNULLIデバイスのコマンドライン(もしくはシェル)を使用してLinuxコマンドを直接実行したい場合があると思います。SSH経由でKNULLIへ接続することで操作できます。 利用できるSSHクライアントはいくつかあります。Windowsでは、ファイル転送にも対応した[SmarTTY](https://sysprogs.com/SmarTTY)や[PuTTY](https://www.putty.org)がおすすめです。

もちろん、OSに標準搭載されているSSHクライアントを利用することもできます。多くのLinuxディストリビューションや最新のWindowsにはSSHコマンドラインツールが標準搭載されており、macOSにも最初からSSHクライアントが含まれています。

SSHでKNULLIへ接続するには、まず[Networking](./networking.md)の説明どおりにKNULLIをローカルネットワークへ接続し、その後、以下の手順でSSH接続を行ってください。

## 必要な情報

SSH接続には以下の情報が必要です。:

* Host: KNULLIデバイスのホスト名（初期設定は`KNULLI`）または現在のIPアドレス (++"Start"++ → *Network settings*で確認可能)
* Username: `root`
* Password: 現在のパスワード (++"Start"++ → *System settings* → *Security*で確認可能。デフォルトは`linux`)

## 方法 1: コマンドラインからSSHを利用する

* PCでコマンドライン（ターミナル）を開きます。
    * Windowsでは、Windows Terminal、コマンドプロンプト（CMD）、PowerShellが利用できます。
    * Linuxでは、お使いのターミナルを使用します。
    * macOSでは、標準のTerminalアプリを使用します。
* 次のコマンドを入力します。
  ```
  ssh root@knulli
  ```
  ++"Enter"++キーを押して実行します。 (KNULLIのホスト名を変更している場合は、`knulli`の代わりに設定したホスト名、またはIPアドレスを指定してください。)
* フィンガープリントの確認を求められた場合は、承認します。
* パスワードの入力を求められたら入力し、Enterキーを押します。
* パスワード認証が成功すると、SSHでKNULLIへ接続されます。
* 作業が終わったら、`exit`と入力してEnterキーを押すとSSH接続を終了できます。

## 方法 2: 専用のSSHクライアントを使用する

SmarTTYでSSH接続する場合は、SmarTTYをインストールして起動し、以下の手順に従ってください。

<table>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-001.png">
			<p><strong>Step 1: </strong>ウィンドウの左下にある<em>New SSH connection...</em>をクリック<p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-002.png">
	    	<p><strong>Step 2: </strong>新規のSSH接続先情報を入力して、<em>Connect</em>ボタンをクリック。</p>
			<table>
				<tr>
					<th>Host Name:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>User Name:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><code>linux</code></td>
				</tr>
				<tr>
					<td colspan=2>
						<strong>以下も確認:</strong>
						<ul>
							<li>共有鍵認証を設定し、再度の確認をしないように設定</li>
							<li>接続先リストに保存</li>
						</ul>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-003.png">
			<p><strong>Step 3: </strong>仮想端末の種別を聞かれた場合、<em>regular Terminal</em>を選択。</p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-004.png">
			<p><strong>Step 4: </strong>KNULLIへのSSH接続に成功</p>
		</td>
	</tr>
</table>
