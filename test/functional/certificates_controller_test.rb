require 'test_helper'

class CertificatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post :create, :certificate => { }
    end

    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should show certificate" do
    get :show, :id => certificates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => certificates(:one).to_param
    assert_response :success
  end

  test "should update certificate" do
    put :update, :id => certificates(:one).to_param, :certificate => { }
    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete :destroy, :id => certificates(:one).to_param
    end

    assert_redirected_to certificates_path
  end
end
