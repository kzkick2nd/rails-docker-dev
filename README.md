# Rails on Docker 練習台
- ruby2.4.2 + Rails5.1.5
- http://localhost:3000

## 初期化（すべてローカル実行）
- 起動 => `docker-compose up -d`
- 停止 => `docker-compose down`
- Rails初期化 => `docker-compose exec app bin/setup`
- Rails初期化 => `docker-compose exec app bin/update`
- yarn初期化 => `docker-compose exec app yarn install`

## Rails系コマンドについて
- ローカルのRailsバージョンが同じであれば、ファイル操作だけの`rails g`系や`rake routes`コマンドはローカル実行しても良い
- `docker-compose exec NAME`の後にコマンドを繋げればローカルからコンテナ内実行が可能。
- 例`docker-compose exec app bundle exec rake db:migrate`
- gemの追加時`docker-compose exec app bundle install`

## 例Scaffoldする場合
- ローカルで`rails g scaffold sample title:string body:text` => ファイルが生成されるだけ
- ローカルからコンテナに対して`docker-compose exec app bundle exec rake db:migrate`

# MEMO
- config/database.ymlのhostは、docekrとそれ以外に対応するために、環境変数`DB_HOSTNAME`を見て分岐。

# TODO
- byebug系のattach
- log,標準出力周り
- イメージ800MBは重い
