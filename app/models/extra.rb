class Extra < ApplicationRecord

  has_many :extra_infos

  has_one_attached :image
  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }
  #validates :image

end
