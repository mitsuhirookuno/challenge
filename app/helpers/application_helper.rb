module ApplicationHelper

  def replace_local( message, map )
    map.each{|filed_name,local_name| message.gsub!( filed_name, local_name ) }
    message
  end

  def number_to_currency_jp( number )
    number_to_currency( number, unit: "￥", precision: 0 )
  end

end
