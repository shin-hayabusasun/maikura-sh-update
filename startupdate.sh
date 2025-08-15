 #!/bin/bash
# サーバーのディレクトリパス
SERVER_DIR="/home/user/bedrock1.21.3/bedrock-server-1.21.3.01"
# アドオンディレクトリ（behavior_packsとresource_packs）
BEHAVIOR_DIR="$SERVER_DIR/behavior_packs"
RESOURCE_DIR="$SERVER_DIR/resource_packs"
# 既存のサーバーのバックアップを作成

# 最新のサーバーファイルをダウンロード
DOWNLOAD_URL=$(curl --tls-max 1.2 -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" -s https://www.minecraft.net/en-us/download/server/bedrock | grep -E 'https://www.minecraft.net/bedrockdedicatedserver/bin-linux/bedrock-server-.{3,14}zip' | head -1 | grep -oP 'href="\Khttps://[^"]+')
echo $DOWNLOAD_URL
wget --user-agent= "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" -O bedrock-server-latest.zip $DOWNLOAD_URL
# ダウンロードしたZIPファイルを解凍（アドオンや設定ファイルは除外）
unzip -o bedrock-server-latest.zip -x   "permissions.json" "server.properties" "whitelist.json" -d $SERVER_DIR
rm bedrock-server-latest.zip
# サーバーを起動
cd $SERVER_DIR
./bedrock_server
