# README  
# 海事代理士試験口述試験対策アプリ
## 概要
#### 簡単に海事代理士試験の口述試験の過去問が解ける						
#### 自分の弱い分野（間違えた問題）を把握できる						
## コンセプト
#### いつでもどこでも試験対策をお手軽に
## バージョン
#### ruby 2.5.0　Rails 5.1.6
## 機能一覧
- ログイン機能
- ユーザー登録機能
    - 全項目（メールアドレス、名前、パスワード）必須
- ユーザー編集機能（当該ユーザー本人のみ）
- 管理者機能
- 新規問題登録機能（管理者用）
    - 全項目（出題年度、科目名、科目問題番号、問題、解答）必須
- 問題編集機能（管理者用）
- 問題削除機能（管理者用）
- CSVによる問題登録機能（管理者用）
- 過去問ランダム出題機能（利用者用）
- 過去問解答表示機能（利用者用）
- 不正解問題保持機能（利用者用）
- 不正解問題一覧表示機能（利用者用）
- 不正解問題一覧PDF化機能（利用者用）
## カタログ設計
https://docs.google.com/spreadsheets/d/1FnxusvWvzYZgvAOGA5CA6okOoUH8S_G27h4uAYQ5qNI/edit#gid=157155796
## テーブル定義
https://docs.google.com/spreadsheets/d/1FnxusvWvzYZgvAOGA5CA6okOoUH8S_G27h4uAYQ5qNI/edit#gid=1866549758
## 画面遷移図
https://docs.google.com/spreadsheets/d/1oqMYD98NAt-BAGsWRh2IYQ-oh_0WFqXkl_aY7p0_UwY/edit#gid=0
## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1xcLYpQgzu8CPjbmLGzy880QHj8wBNNdwIwwoR1NWEkQ/edit#gid=0
## 使用予定Gem
- devise
- wicked_pdf
- active_admin
## 参考資料
#### 国土交通省ホームページ「海事代理士になるには」
http://www.mlit.go.jp/about/file000049.html