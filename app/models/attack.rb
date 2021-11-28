class Attack < ApplicationRecord

  belongs_to :article
  has_many :contents

  validates :nombre, presence: true
  validates :informacion, presence: true, length: { maximum: 1000 }
  validates :article_id, presence: true

end
