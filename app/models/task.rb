class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :priority
  belongs_to :user
  has_many :contents

  validates :text, presence: true, length: {maximum: 40 }
  validates :priority, presence: true
  validates :priority_id, numericality: { other_than: 1 }

end
