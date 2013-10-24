module ApplicationHelper

  def replace_local( message, map )
    map.each{|filed_name,local_name| message.gsub!( filed_name, local_name ) }
    message
  end

end
