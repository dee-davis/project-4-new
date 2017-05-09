class CareerApplicationsController < ApplicationController

  before_action :authenticate_user!
    before_action :load_project, only:[:new, :create]

  end
