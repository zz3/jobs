require 'test_helper'

class KontaktartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontaktarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontaktart" do
    assert_difference('Kontaktart.count') do
      post :create, :kontaktart => { }
    end

    assert_redirected_to kontaktart_path(assigns(:kontaktart))
  end

  test "should show kontaktart" do
    get :show, :id => kontaktarts(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => kontaktarts(:one).id
    assert_response :success
  end

  test "should update kontaktart" do
    put :update, :id => kontaktarts(:one).id, :kontaktart => { }
    assert_redirected_to kontaktart_path(assigns(:kontaktart))
  end

  test "should destroy kontaktart" do
    assert_difference('Kontaktart.count', -1) do
      delete :destroy, :id => kontaktarts(:one).id
    end

    assert_redirected_to kontaktarts_path
  end
end
