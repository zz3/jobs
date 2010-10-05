require 'test_helper'

class FirmasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firma" do
    assert_difference('Firma.count') do
      post :create, :firma => { }
    end

    assert_redirected_to firma_path(assigns(:firma))
  end

  test "should show firma" do
    get :show, :id => firmas(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => firmas(:one).id
    assert_response :success
  end

  test "should update firma" do
    put :update, :id => firmas(:one).id, :firma => { }
    assert_redirected_to firma_path(assigns(:firma))
  end

  test "should destroy firma" do
    assert_difference('Firma.count', -1) do
      delete :destroy, :id => firmas(:one).id
    end

    assert_redirected_to firmas_path
  end
end
