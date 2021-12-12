class Category < ApplicationRecord

  has_many :articles

  has_one_attached :image
  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }

end
