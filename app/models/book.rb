class Book < ActiveRecord::Base

  has_many :store_books, :dependent => :destroy
  has_many :stores, :through => :store_books

end
