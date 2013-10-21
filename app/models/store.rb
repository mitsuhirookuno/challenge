class Store < ActiveRecord::Base

  has_many :store_books, :dependent => :destroy
  has_many :books, :through => :store_books

  def set_book_price( book, price )
    store_books = self.store_books.find( :first, conditions: { book_id: book.id } )
    store_books.create_store_book_price( price: price )
    store_books.save!
  end

end
