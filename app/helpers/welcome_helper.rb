module WelcomeHelper

  def format_discount_rate( original_price, discount_price )
    '(%d％ OFF)' % ((1 - ( discount_price.to_f / original_price )).round(2) * 100)
  end

  def get_minimum( store_books )
    store_books.reject{|r| r.store_book_price.price.nil? }.min_by{|r| r.store_book_price.price }.store_book_price.price if store_books.size > 0
  end

end
