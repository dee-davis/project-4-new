class CareerApplications < ApplicationRecord
  belongs_to :user
  belongs_to :career

  validates :description, length: {within: 10..500}
  validates :content, presence: true
end
