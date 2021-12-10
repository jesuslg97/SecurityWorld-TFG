class General < ApplicationRecord

  belongs_to :article

  validates :titulo, presence: true
  validates :informacion, presence: true, length: { maximum: 1000 }
  validates :article_id, presence: true

end
