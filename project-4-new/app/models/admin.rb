class Admin < ApplicationRecord
  include Nameable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :career_applications, through :careers
  has_many :careers

end
