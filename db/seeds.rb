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
rakuten   = Store.create!( name: '楽天' )
booklive  = Store.create!( name: 'BookLive' )
ebookjapan = Store.create!( name: 'EBookJapan' )

# Book

## one piece
one_piece = Book.create!( name: 'ONE PIECE', price: 410 )
amazon.books << one_piece
amazon.set_book_price( one_piece, 368 )
amazon.save!
# play.books       << one_piece
rakuten.books << one_piece
rakuten.set_book_price( one_piece, 368 )
booklive.books << one_piece
booklive.set_book_price( one_piece, 367 )
ebookjapan.books << one_piece
ebookjapan.set_book_price( one_piece, 368 )

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

User.create!( username: 'hogehoge', email: 'aaa@bbb.ccc', password: 'aaaa', password_confirmation: 'aaaa' )
