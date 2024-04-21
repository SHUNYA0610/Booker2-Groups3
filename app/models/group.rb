class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users, source: :user

  validates :name, presence: true
  validates :introduction, presence: true

  has_one_attached :image
  
 def includesUser?(user)
  group_users.exists?(user_id: user.id)
 end
end