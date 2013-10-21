class StoreBook < ActiveRecord::Base

  after_save :hoge_after_save
  after_destroy :hoge_after_destroy

  belongs_to :store
  belongs_to :book

  has_one :store_book_price

  private

  def hoge_after_save
    puts "@@@ hoge_after_save #{self.id} @@@"
    self.create_store_book_price! if self.store_book_price.nil?
  end

  def hoge_after_destroy
    puts '@@@ hoge_after_destroy @@@'
    self.store_book_price.destroy if self.store_book_price.presence
  end

end
