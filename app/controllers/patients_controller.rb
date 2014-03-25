class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
    render json: @patients
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    id = params[:id]
    @patient = Patient.find(id)
    render json: @patient
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    if @patient.update(survey_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:physician_id, :name, :knee_location, :surgery_type, :knee_brand, :knee_brand_type, :address1, :address2, :city, :state, :zipcode, :phone, :email)
    end
end
