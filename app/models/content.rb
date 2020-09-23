class Content < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  

  validates :message, presence: true, length: {maximum: 40 }
  validates :image, presence: true

end
