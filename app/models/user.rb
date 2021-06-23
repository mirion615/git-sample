class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< Updated upstream

         with_options presence: true do
          validates :nickname
          validates :age
         end
  enum gender: { man: 0, woman: 1}
=======
         with_options presence: true do
          validates :nickname 
          validates :age 
         end
         enum sex: { man: 0, woman: 1}
>>>>>>> Stashed changes
end
