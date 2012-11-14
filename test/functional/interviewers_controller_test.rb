require 'test_helper'

class InterviewersControllerTest < ActionController::TestCase
  setup do
    @interviewer = interviewers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interviewers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interviewer" do
    assert_difference('Interviewer.count') do
      post :create, interviewer: { bank_account_number: @interviewer.bank_account_number, bank_identification_code: @interviewer.bank_identification_code, date_of_birth: @interviewer.date_of_birth, drivers_license: @interviewer.drivers_license, email: @interviewer.email, first_name: @interviewer.first_name, last_name: @interviewer.last_name, mobile_phone: @interviewer.mobile_phone, street: @interviewer.street, street_number: @interviewer.street_number, zip: @interviewer.zip }
    end

    assert_redirected_to interviewer_path(assigns(:interviewer))
  end

  test "should show interviewer" do
    get :show, id: @interviewer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interviewer
    assert_response :success
  end

  test "should update interviewer" do
    put :update, id: @interviewer, interviewer: { bank_account_number: @interviewer.bank_account_number, bank_identification_code: @interviewer.bank_identification_code, date_of_birth: @interviewer.date_of_birth, drivers_license: @interviewer.drivers_license, email: @interviewer.email, first_name: @interviewer.first_name, last_name: @interviewer.last_name, mobile_phone: @interviewer.mobile_phone, street: @interviewer.street, street_number: @interviewer.street_number, zip: @interviewer.zip }
    assert_redirected_to interviewer_path(assigns(:interviewer))
  end

  test "should destroy interviewer" do
    assert_difference('Interviewer.count', -1) do
      delete :destroy, id: @interviewer
    end

    assert_redirected_to interviewers_path
  end
end
