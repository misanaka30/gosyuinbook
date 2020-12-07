class Gosyuin < ApplicationRecord
 belongs_to :user
 has_one_attached :image 

 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to :stamp
 belongs_to :limited
 belongs_to :prefecture
 
 validates :title, presence: true
 validates :caption, presence: true
 validates :image, presence: true
end
