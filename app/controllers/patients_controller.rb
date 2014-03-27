class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
    render json: @patients, :include => :surveys
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    id = params[:id]
    @patient = Patient.find(id)
    render json: @patient, :include => :surveys
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    @patient.surveys.create(time_period: "1 Month", status: "OPEN")
    @patient.surveys.create(time_period: "3 Months", status: "OPEN")
    @patient.surveys.create(time_period: "6 Months", status: "OPEN")
    @patient.surveys.create(time_period: "9 Months", status: "OPEN")
    @patient.surveys.create(time_period: "12 Months", status: "OPEN")


    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    if @patient.update(patient_params)
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
