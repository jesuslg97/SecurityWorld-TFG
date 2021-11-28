class Article < ApplicationRecord

  belongs_to :category
  has_many :attacks
  has_many :questions
  has_many :generals

  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }
  validates :texto, presence: true, length: { maximum: 1000 }
  validates :category_id, presence: true

end
