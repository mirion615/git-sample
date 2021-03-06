class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do

      validates :nickname
      validates :age
    end
    
    enum gender: { man: 0, woman: 1}
    has_many :posts

  has_many :user_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
end
