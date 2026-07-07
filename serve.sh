#!/bin/bash
# 本機預覽伺服器（Mac）— 放在專案資料夾裡，雙擊或 ./serve.sh 執行
cd "$(dirname "$0")"          # 切到腳本所在的資料夾（= 專案資料夾）

PORT=8000
echo "啟動本機預覽：http://localhost:$PORT"
echo "按 Ctrl + C 停止"

# 稍等一秒後自動打開瀏覽器
( sleep 1 && open "http://localhost:$PORT" ) &

python3 -m http.server $PORT
