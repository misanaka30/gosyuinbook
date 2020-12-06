class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :profile, presence: true
  validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }

  has_many :gosyuins
end
