# 練習台
- ruby2.4.2 + Rails5.1.4
- http://localhost:3000

# 操作（すべてローカルで実行）
- 起動 => `docker-compose up -d`
- 停止 => `docker-compose down`
- Rails初期化 => `docker-compose exec app bundle exec rails db:setup`
- Railsコマンド => `docker-compose exec app bundle exec rails XXX` = 内部で実行できる

# MEMO
- rails周りの設定は、config/database.ymlのlocalhostをdbに置き換えたくらい。

# TODO
- byebug系のattach
- log,標準出力周り
- 重い
