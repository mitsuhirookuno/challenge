class Store < ActiveRecord::Base

  has_many :store_books, :dependent => :destroy
  has_many :books, :through => :store_books

  def set_book_price( book, price )
    store_book = self.store_books.find( :first, conditions: { book_id: book.id }, include: 'store_book_price' )
    store_book.store_book_price.price = price
    store_book.store_book_price.save!
  end

end
