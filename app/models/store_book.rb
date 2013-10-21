class StoreBook < ActiveRecord::Base

  belongs_to :store
  belongs_to :book

  has_one :store_book_price

end
