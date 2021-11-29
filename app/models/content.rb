class Content < ApplicationRecord

  belongs_to :attack

  validates :titulo, presence: true
  validates :informacion, presence: true, length: { maximum: 1000 }
  validates :attack_id, presence: true

end
