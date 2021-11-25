class Article < ApplicationRecord

  belongs_to :category
  has_many :attacks
  has_many :questions

end
