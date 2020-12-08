class Gosyuin < ApplicationRecord
 belongs_to :user
 has_one_attached :image 
 has_many :comments, dependent: :destroy

 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to :stamp
 belongs_to :limited
 belongs_to :prefecture
 
 validates :title, presence: true
 validates :caption, presence: true
 validates :image, presence: true
end
