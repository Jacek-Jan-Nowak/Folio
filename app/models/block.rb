class Block < ApplicationRecord
  belongs_to :project
  has_many :structures
end
