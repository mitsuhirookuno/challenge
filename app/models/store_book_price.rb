class StoreBookPrice < ActiveRecord::Base

  belongs_to :store_book

  validates :price, numericality: { only_integer: true, message: '数値ではありません' }
end
