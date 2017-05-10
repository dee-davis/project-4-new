class CareersController < ApplicationController
def index
end
# create code
def create
  # @career = Post.create (content: post_params)
  # if @career.save
    redirect_to careers_path, notice: "You posted a Career sucessfully!"
  # else render :new
  end


def new

# def post_params
#
#   end
end
end
