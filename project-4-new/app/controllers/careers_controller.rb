class CareersController < ApplicationController
  before_action :set_career, only: [:show, :edit, :update, :destroy]

  # GET /careers
  # GET /careers.json
  def index
    @careers = Career.all
  end

  # GET /careers/1
  # GET /careers/1.json
  def show
    @career = Career.find_by(title: params[:id])
  end

  # GET /careers/new
  def new
    @career = Career.new
  end

  # GET /careers/1/edit
  def edit
  end

  # POST /careers
  # POST /careers.json
  def create
    puts career_params
    @career = Career.new(career_params)

    # respond_to do |format|
      if @career.save
        # format.html { redirect_to @career, notice: 'Career was successfully created.' }
        # format.json { render :show, status: :created, location: @career }
        redirect_to '/careers'
      # else
      #   format.html { render :new }
      #   format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end


  # PATCH/PUT /careers/1
  # PATCH/PUT /careers/1.json
  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to @career, notice: 'Career was successfully updated.' }
        format.json { render :show, status: :ok, location: @career }
      else
        format.html { render :edit }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /careers/1
  # DELETE /careers/1.json

  def destroy
    @career = Career.find_by(title: params[:id])
    @career.destroy
    redirect_to '/careers'
    # respond_to do |format|
    #   format.html { redirect_to careers_url, notice: 'Career was successfully destroyed.' }
    #   format.json { head :no_content }
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career
      # @career = Career.find(params[:id])
      @career = Career.find_by title: params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_params
      params.require(:career).permit(:title, :content)
    end
end
