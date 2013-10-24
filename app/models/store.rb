class Store < ActiveRecord::Base

  has_many :store_books, :dependent => :destroy
  has_many :books, :through => :store_books

  validates :name, presence: { message: '省略できません' },
                   uniqueness: { message: '既に登録されています' }

  def set_book_price( book, price )
    store_book = self.store_books.where( book_id: book.id ).includes( :store_book_price ).first
    store_book.store_book_price.price = price
    store_book.store_book_price.save!
  end

end
