# :material-folder-cog: フォーマット

## フォーマットをする前に

* フォーマットを行うと、フォーマットされたストレージ上の**すべてのデータ**が**完全に削除される**ことに注意してください。
* フォーマットするディスクを**正しく選択**してください。特に**SDカードを2枚使用している場合**は注意が必要です！
* Windows/macOS/Linuxから直接フォーマットする事は**避け**、可能であれば**KNULLI内臓のフォーマッタを使用してください**！

## 内蔵フォーマッタ

### 利用可能なファイルシステム¶

内蔵のKNULLIフォーマッタは、2種類のファイルシステムを提供します。:

* **ext4**はLinuxのファイルシステムであり、Windows/macOSから**直接アクセスすることはできません**。
* **exFAT**は、Windows/macOS互換のファイルシステムであり、ほとんどのカスタムファームウェア（CFW）、スマートフォンなどで使用されています。

### フォーマット

内蔵のKNULLIフォーマッタを使用すると、プライマリSDカードの内部データストレージと、オプションの2番目のSDカードの両方をフォーマットできます。

データストレージを任意のファイルシステムにフォーマットするには、++"Start"++ボタンを押してメインメニューを開き、*システム設定*の*開発者オプション*から*ファイルシステムの変更とフォーマット*を選択します。*対象ストレージ*と*ファイルシステム*を選択した後、**フォーマットを開始**を選択した後、フォーマットを適用するにはデバイスを再起動する必要があることに注意してください。

!!! info "フォーマット後"

    フォーマット後、KNULLIは[`/userdata` folder](./game-storage.md)を生成し、必要なデータを入力します。

## Windowsでのフォーマット

Windowsでのフォーマットは、**exFAT**でフォーマットしたい場合のみ役立ちます。

WindowsからSDカードをフォーマットする場合は、Windowsの**ディスクの管理**を使用することを強くお勧めします。これにより、**正しいパーティション**を簡単にフォーマットできます。*スタートメニュー*を開き、`ディスクの管理`と入力すると、このツールを見つけることができます。このツールは「ハードディスクパーティションの作成とフォーマット」という名前で表示されます。

<table>
	<tr>
		<td width="50%">
			<img src="/_inc/images/play/formatting/001-formatting-after-flashing-not-yet-expanded.png">
			<p><strong>ステップ1: </strong>先に進む前に、パーティションが正しく拡張されていることを確認してください。スクリーンショットは、共有パーティションが拡張される<strong>前の</strong> SDカードで、<strong>未割り当て</strong>領域が多く残っています。パーティションが正しく拡張されていることを確認するには、先に進む前にデバイスをSDカードから起動することをお勧めします。</p>
		</td>
		<td width="50%">
			<img src="/_inc/images/play/formatting/002-formatting-delete-volume.png">
	    	<p><strong>ステップ2: </strong>SDカードが初期化されたら、最大サイズの拡張されたパーティションを見つけて右クリックし、<em>ボリュームの削除...</em>を選択します。</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/003-formatting-create-volume.png">
			<p><strong>ステップ3: </strong>割り当てられていない領域を右クリックし、<em>新しいシンプル ボリューム...</em>を選択します。</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/004-formatting-create-volume-max-size.png">
			<p><strong>ステップ4: </strong>新しく作成したボリュームに、利用可能なディスク容量をすべて割り当ててください。</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/005-formatting-create-volume-assign-drive-letter.png">
			<p><strong>ステップ5: </strong>新しく作成したボリュームにドライブ文字を割り当てます。（任意のドライブ文字を選択しても構いませんが、Windowsが自動的に提案するドライブ文字を使用することをお勧めします。）</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/006-formatting-create-volume-format-to-exfat.png">
			<p><strong>ステップ6: </strong>ボリュームを<strong>exFAT</strong>、アロケーションユニットサイズ<strong>デフォルト</strong>、ボリュームラベル<code>share</code>でフォーマットします。</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/007-formatting-formatted-to-exfat.png">
			<p><strong>ステップ7: </strong><em>share</em>パーティションがexFAT形式でフォーマットされていることを確認します。</p>
		</td>
		<td></td>
	</tr>
</table>

!!! info "フォーマット後"

    フォーマット後、SDカードをデバイスに挿入し、KNULLIを起動してください。起動中に、KNULLIが自動的に[`/userdata`フォルダ](./game-storage.md)を作成し、必要なデータを生成します。
