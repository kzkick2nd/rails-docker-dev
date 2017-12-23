# Rails on Docker 練習台
- ruby2.4.2 + Rails5.1.4
- http://localhost:3000

## 初期化（すべてローカル実行）
- 起動 => `docker-compose up -d`
- 停止 => `docker-compose down`
- Rails初期化1 => `docker-compose exec app bin/setup`
- Rails初期化2 => `docker-compose exec app bin/update`

## Rails系コマンドについて
- ローカルのRailsバージョンが同じであれば、ファイル操作だけの`rails g`系や`rake routes`コマンドはローカル実行しても良い
- `docker-compose exec NAME`の後にコマンドを繋げればローカルからコンテナ内実行が可能。
- 例`docker-compose exec app bundle exec rake db:migrate`
- gemの追加時`docker-compose exec app bundle install`

## 例Scaffoldする場合
- ローカルで`rails g scaffold sample title:string body:text` => ファイルが生成されるだけ
- ローカルからコンテナに対して`docker-compose exec app bundle exec rake db:migrate`

# MEMO
- rails周りの設定は、config/database.ymlのlocalhostをdbに置き換えたくらい。

# TODO
- byebug系のattach
- log,標準出力周り
- イメージ800MBは重い
