# 🛠️ bash-tools

Minimal ama güçlü **bash script koleksiyonu** 🐚  
Loglama, hata yönetimi, otomasyon, ve sistem araçları bir arada.


### 🚀 Özellikler
- 🔁 `retry` ve `with_lock`
- 🧪 `set -Eeuo pipefail`
- 🪶 Renkli log çıktıları

```bash
chmod +x ./bin/*
./bin/with_lock deploy -- ./scripts/deploy.sh
