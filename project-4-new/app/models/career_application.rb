class CareerApplications < ApplicationRecord
  belongs_to :user
  belongs_to :career

  validates :description, length: {in: 10..1000}
end
