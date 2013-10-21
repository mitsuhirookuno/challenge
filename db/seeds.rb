# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# bundle exec rake db:migrate:reset ; bundle exec rake db:seed

def setStorePrice( store, book, price )
  store_books = book.store_books.find( :first, conditions: { store_id: store.id } )
  store_books.price = price
  store_books.save!
end

# Store
amazon    = Store.create!( name: 'amazon' )
play      = Store.create!( name: 'play' )
rakuten   = Store.create!( name: '楽天ブックス' )
booklive  = Store.create!( name: 'BookLive' )
ebookjapan = Store.create!( name: 'EBookJapan' )

# Book

## ワンピース
one_piece = Book.create!( name: 'ONE PIECE', price: 410 )
amazon.books << one_piece
amazon.set_book_price( one_piece, 368 )
# play.books       << one_piece
rakuten.books << one_piece
rakuten.set_book_price( one_piece, 368 )
booklive.books << one_piece
booklive.set_book_price( one_piece, 367 )
ebookjapan.books << one_piece
ebookjapan.set_book_price( one_piece, 368 )

# 進撃の巨人
attack_on_titan = Book.create!( name: '進撃の巨人', price: 450 )
amazon.books << attack_on_titan
amazon.set_book_price( attack_on_titan, 420 )
rakuten.books << attack_on_titan
rakuten.set_book_price( attack_on_titan, 420 )
booklive.books << attack_on_titan
booklive.set_book_price( attack_on_titan, 420 )
ebookjapan.books << attack_on_titan
ebookjapan.set_book_price( attack_on_titan, 420 )

# 孤独のグルメ
gourmet_of_loneliness = Book.create!( name: '孤独のグルメ', price: 1_200 )
amazon.books << gourmet_of_loneliness
amazon.set_book_price( gourmet_of_loneliness, 598 )
rakuten.books << gourmet_of_loneliness
rakuten.set_book_price( gourmet_of_loneliness, 600 )
booklive.books << gourmet_of_loneliness
booklive.set_book_price( gourmet_of_loneliness, 630 )
ebookjapan.books << gourmet_of_loneliness
ebookjapan.set_book_price( gourmet_of_loneliness, 630 )

# オレたちバブル入行組
strikes_back_losgene = Book.create!( name: 'ロスジェネの逆襲', price: 1_575 )
amazon.books << strikes_back_losgene
amazon.set_book_price( strikes_back_losgene, 1_200 )
play.books << strikes_back_losgene
play.set_book_price( strikes_back_losgene, 1_200 )
rakuten.books << strikes_back_losgene
rakuten.set_book_price( strikes_back_losgene, 1_200 )
booklive.books << strikes_back_losgene
booklive.set_book_price( strikes_back_losgene, 1_260 )
# ebookjapan.books << strikes_back_losgene

# リーガル・ハイ
regal_high = Book.create!( name: 'リーガル・ハイ', price: 1_365 )
amazon.books << regal_high
amazon.set_book_price( regal_high, 500 )
rakuten.books << regal_high
rakuten.set_book_price( regal_high, 500 )
booklive.books << regal_high
booklive.set_book_price( regal_high, 500 )

# リーン・スタートアップ
rean_startup = Book.create!( name: 'リーン・スタートアップ', price: 1_890 )
amazon.books << rean_startup
amazon.set_book_price( rean_startup, 990 )
booklive.books << rean_startup
booklive.set_book_price( rean_startup, 1_039 )

if Rails.env == 'development'
  User.create!( username: 'hogehoge', email: 'aaa@bbb.ccc', password: 'aaaa', password_confirmation: 'aaaa' )
end
