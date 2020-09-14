class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :priority
  belongs_to :user


  validates :text, :priority, presence: true

  validates :priority_id, numericality: { other_than: 1 }

end
