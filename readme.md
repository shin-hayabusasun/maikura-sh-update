# Bedrock サーバー自動アップデートスクリプト

このリポジトリには、Minecraft Bedrock Edition サーバーの自動アップデート用シェルスクリプト `startupdate.sh` が含まれています。

## 機能
- 最新のBedrockサーバーファイルを公式サイトから自動ダウンロード
- サーバーディレクトリへの自動展開（設定ファイルやアドオンは保持）
- サーバーの自動起動

## 使い方
1. サーバーのディレクトリパスを `startupdate.sh` 内で自分の環境に合わせて修正してください。
2. サーバー上で `startupdate.sh` を実行します。
   ```bash
   bash startupdate.sh
   ```
3. サーバーが自動的に最新バージョンにアップデートされ、起動します。

## 注意事項
- サーバーの設定ファイル（`permissions.json`、`server.properties`、`whitelist.json`）は上書きされません。
- Linux環境での動作を想定しています。
- `curl`、`wget`、`unzip` コマンドが必要です。

## ライセンス
このスクリプトはMITライセンスです。
