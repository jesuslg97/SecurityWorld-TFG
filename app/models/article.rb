class Article < ApplicationRecord

  belongs_to :category
  has_many :attacks
  has_many :questions
  has_many :generals
  has_many :comments

  has_one_attached :image
  validates :nombre, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }
  validates :introduccion, presence: true, length: { maximum: 1000 }
  validates :category_id, presence: true
  #validates :image

end
