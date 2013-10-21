class StoreBook < ActiveRecord::Base

  belongs_to :store
  belongs_to :book

end
