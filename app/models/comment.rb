class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :general

  validates :titulo, presence: true
  validates :comentario, presence: true, length: { maximum: 3000 }

end
