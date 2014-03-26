class PhysiciansController < ApplicationController
  before_action :set_physician, only: [:show, :edit, :update, :destroy]

  # GET /physicians
  # GET /physicians.json
  def index
    @physicians = Physician.all
    render json: @physicians
  end

  # GET /physicians/1
  # GET /physicians/1.json
  def show
    id = params[:id]
    @physician = Physician.find(id)
    render json: @physician, :include => :patients
  end

  # POST /physicians
  # POST /physicians.json
  def create
    @physician = Physician.new(physician_params)

    if @physician.save
      render json: @physician, status: :created
    else
      render json: @physician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /physicians/1
  # PATCH/PUT /physicians/1.json
  def update
    if @physician.update(survey_params)
      head :no_content
    else
      render json: @physician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /physicians/1
  # DELETE /physicians/1.json
  def destroy
    @physician.destroy
    
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physician
      @physician = Physician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physician_params
      params.require(:physician).permit(:name, :practice, :address1, :address2, :city, :state, :zipcode, :phone, :email)
    end
end
