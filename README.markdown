# 電子書籍価格比較アプリ

```
本アプリケーションは、情報が分散しがちな電子書籍の値段を比較したい！と、いう願いを込めて作っています。
現在のところ、クロール・スクレイピングはしておらず、人力での入力が必要です。
```

<a href="http://challenge20131025.herokuapp.com/" target="_blank">こちらでアプリを稼働させています</a>

## Ruby version
ruby 2.0.0p247

## Rails version
rails 4.0.0

## Local Setting

### GitHub上でFork

```
https://github.com/mitsuhirookuno/challenge/
```

### リポジトリをローカルへ作成

```
cd ~/WORK_DIRECTORY
git clone git@github.com:YOUR_USER_NAME/APP_NAME.git
cd APP_NAME
```

### ブランチ作成

```
git checkout -b YOUR_NEW_BRANCH
```


### Rails起動

Gemインストール

```
bundle install --without production
```

ローカルDB作成

```
rake db:migrate
rake db:setup
```

ローカルサーバ起動

```
bundle exec rails s
```

ページアクセス

```
http://0.0.0.0:3000/
```
