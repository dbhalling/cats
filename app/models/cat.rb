class Cat < ApplicationRecord
  has_rich_text :article
  has_many :videos
end
