class Career < ApplicationRecord
  extend FriendlyId
  friendly_id :title

  belongs_to :admin
  has_many :career_applications

# def self.search(params)
#   careers = Career.where("name like ?", "%#{params[:search]}", "%#{params[:search if params[:search].present?
#   careers
# end
end
