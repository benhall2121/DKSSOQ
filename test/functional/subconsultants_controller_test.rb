require 'test_helper'

class SubconsultantsControllerTest < ActionController::TestCase
  setup do
    @subconsultant = subconsultants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subconsultants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subconsultant" do
    assert_difference('Subconsultant.count') do
      post :create, subconsultant: { contact_address: @subconsultant.contact_address, contact_email: @subconsultant.contact_email, contact_fax: @subconsultant.contact_fax, contact_name: @subconsultant.contact_name, contact_phone: @subconsultant.contact_phone, firm_name: @subconsultant.firm_name }
    end

    assert_redirected_to subconsultant_path(assigns(:subconsultant))
  end

  test "should show subconsultant" do
    get :show, id: @subconsultant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subconsultant
    assert_response :success
  end

  test "should update subconsultant" do
    put :update, id: @subconsultant, subconsultant: { contact_address: @subconsultant.contact_address, contact_email: @subconsultant.contact_email, contact_fax: @subconsultant.contact_fax, contact_name: @subconsultant.contact_name, contact_phone: @subconsultant.contact_phone, firm_name: @subconsultant.firm_name }
    assert_redirected_to subconsultant_path(assigns(:subconsultant))
  end

  test "should destroy subconsultant" do
    assert_difference('Subconsultant.count', -1) do
      delete :destroy, id: @subconsultant
    end

    assert_redirected_to subconsultants_path
  end
end
