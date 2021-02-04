class User < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :profile
    validates :occupation
    validates :position
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototype
  has_many :comments
end
