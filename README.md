# kanji_reading  （ LIBERAL EARTH という学習サイトに改変・拡張中）

学習に抵抗感のある児童向けの基礎学習のサイトです。<br>
国語では「漢字の読み」ドリルを、算数では「百ます計算」などを練習できます。<br>
レスポンシブ対応しています。<br>
https://user-images.githubusercontent.com/54266017/193444950-c1a1ae02-ed7a-4fda-915a-f81bae906ca4.png<br>
https://user-images.githubusercontent.com/54266017/193444984-d81b0586-18e5-4ca1-8b17-59f99fe00aa7.png


# URL
https://kanji-reading.herokuapp.com<br>
特にログインしなくてもほとんどの機能が使えます。

# 使用技術
- Ruby 2.7
- Ruby on Rails 6.1.6.1
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
