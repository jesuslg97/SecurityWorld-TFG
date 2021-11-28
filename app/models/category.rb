class Category < ApplicationRecord

  has_many :articles

  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }

end
