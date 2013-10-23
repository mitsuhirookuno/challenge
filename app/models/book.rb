class Book < ActiveRecord::Base

  has_many :store_books, :dependent => :destroy
  has_many :stores, :through => :store_books

  validates :name, presence: { message: '省略できません' },
                   uniqueness: { message: '既に登録されています' }
  validates :price, presence: { message: '省略できません' },
                    numericality: { only_integer: true, message: '数値ではありません' }

end
