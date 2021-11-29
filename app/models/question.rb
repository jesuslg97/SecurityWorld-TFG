class Question < ApplicationRecord

  belongs_to :article

  validates :pregunta, presence: true
  validates :respuesta, presence: true, length: { maximum: 1000 }
  validates :article_id, presence: true

end
