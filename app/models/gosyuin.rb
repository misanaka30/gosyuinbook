class Gosyuin < ApplicationRecord
belongs_to :user
belongs_to_active_hash  :prefecture_id
belongs_to_active_hash  :stamp_id
belongs_to_active_hash  :limited_id
has_one_attached :image 

validates :title, presence: true
validates :caption, presence: true
validates :image, presence: true
end
