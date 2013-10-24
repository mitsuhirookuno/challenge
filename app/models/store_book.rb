class StoreBook < ActiveRecord::Base

  after_save :price_after_save
  after_destroy :price_after_destroy

  belongs_to :store
  belongs_to :book

  has_one :store_book_price

  private

  def price_after_save
    self.create_store_book_price! if self.store_book_price.nil?
  end

  def price_after_destroy
    self.store_book_price.destroy if self.store_book_price.presence
  end

end
