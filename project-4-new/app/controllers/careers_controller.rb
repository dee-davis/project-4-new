class CareersController < ApplicationController
def index
end
# create code
def create
    redirect_to careers_path, notice: "You posted a Career sucessfully!"
  # else render :new
  end


def new

# def post_params
#
#   end
end
end

def careers_path
  params.require(:career).permit(:name, :description, :location, :title)

end
