class Attack < ApplicationRecord

  belongs_to :article
  has_many :contents

  validates :nombre, presence: true
  validates :article_id, presence: true

end
