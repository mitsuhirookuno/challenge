class Store < ActiveRecord::Base
  has_many :store_books, :dependent => :destroy
  has_many :books, :through => :store_books
end
