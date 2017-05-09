class Admin < ApplicationRecord
  include Nameable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :careers


end
