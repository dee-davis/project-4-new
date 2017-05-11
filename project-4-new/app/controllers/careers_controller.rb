class CareersController < ApplicationController

def index
  @careers = Career.all
end
# create code
def create
    # career = Career.create(post_params)
    redirect_to careers_path, notice: "You posted a Career sucessfully!"
  # else render :new
  end


def new

# def post_params
#
#   end
end
end

def show
  @career = Career.find(params[:id])
end

def search
@careers = Career.search(params)
end

private

def careers_path
  params.require(:career).permit(:company_name, :description, :location, :title)

end
