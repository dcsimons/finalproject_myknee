require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { patient_id: @survey.patient_id, q1_rating: @survey.q1_rating, q2_rating: @survey.q2_rating, q3_rating: @survey.q3_rating, q4_rating: @survey.q4_rating, q5_rating: @survey.q5_rating, q6_rating: @survey.q6_rating, time_period: @survey.time_period }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { patient_id: @survey.patient_id, q1_rating: @survey.q1_rating, q2_rating: @survey.q2_rating, q3_rating: @survey.q3_rating, q4_rating: @survey.q4_rating, q5_rating: @survey.q5_rating, q6_rating: @survey.q6_rating, time_period: @survey.time_period }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
