class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gosyuin

  validates :text, presence: true
end
