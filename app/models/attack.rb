class Attack < ApplicationRecord

  belongs_to :article
  has_many :contents

end
