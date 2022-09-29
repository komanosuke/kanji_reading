# LIBERAL EARTH
 学習に抵抗感のある児童向けの基礎学習のサイトです。<br>
 国語では「漢字の読み」ドリルを、算数では「百ます計算」などを練習できます。<br>
 レスポンシブ対応しているのでスマホからもご確認いただけます。

# URL
https://kanji-reading.herokuapp.com<br>

# 使用技術
- Ruby 2.7
- Ruby on Rails 5.2.4
- MySQL 5.5
- Puma
- HEROKU
- Docker/Docker-compose
- CircleCi CI/CD

## CircleCi CI/CD
- Githubへのmainブランチへのmerge時にエラーがなかった場合、HEROKUへの自動デプロイが実行されます。

# 機能一覧
- ユーザー登録、ログイン機能(devise)
- 学習記録保存機能(Ajax)