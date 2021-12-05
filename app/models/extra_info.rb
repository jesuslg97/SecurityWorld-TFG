class ExtraInfo < ApplicationRecord

  belongs_to :extra

  has_one_attached :image
  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 3000 }
  validates :extra_id, presence: true
  #validates :image

end
