class User < ActiveRecord::Base

  authenticates_with_sorcery!

  validates :username, presence: { message: '省略できません' }
  validates :email, presence: { message: '省略できません' },
                    uniqueness: { message: '既に登録されています' }
  validates :password, length: { minimum: 3, too_short: "%{count}文字以上の入力が必要です" },
                       confirmation: { message: '確認用の入力が必要です' }
  validates :password_confirmation, presence: { message: '省略できません' }

end
