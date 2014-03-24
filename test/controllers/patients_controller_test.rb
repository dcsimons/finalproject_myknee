require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { address1: @patient.address1, address2: @patient.address2, city: @patient.city, email: @patient.email, knee_brand: @patient.knee_brand, knee_brand_type: @patient.knee_brand_type, knee_location: @patient.knee_location, name: @patient.name, phone: @patient.phone, physician_id: @patient.physician_id, state: @patient.state, surgery_type: @patient.surgery_type, zipcode: @patient.zipcode }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { address1: @patient.address1, address2: @patient.address2, city: @patient.city, email: @patient.email, knee_brand: @patient.knee_brand, knee_brand_type: @patient.knee_brand_type, knee_location: @patient.knee_location, name: @patient.name, phone: @patient.phone, physician_id: @patient.physician_id, state: @patient.state, surgery_type: @patient.surgery_type, zipcode: @patient.zipcode }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
