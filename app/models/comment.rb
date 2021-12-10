class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :article

  validates :titulo, presence: true
  validates :comentario, presence: true, length: { maximum: 3000 }
  validates :article_id, presence: true

end
