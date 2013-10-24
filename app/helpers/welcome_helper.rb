module WelcomeHelper

  def format_discount_rate( original_price, discount_price )
    '(%d％ OFF)' % ((1 - ( discount_price.to_f / original_price )).round(2) * 100)
  end

end
