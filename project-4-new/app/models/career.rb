class Career < ApplicationRecord
  extend FriendlyId

  belongs_to :admin
  has_many :career_applications

end
