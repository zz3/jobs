require 'test_helper'

class BewerbungsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bewerbungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bewerbung" do
    assert_difference('Bewerbung.count') do
      post :create, :bewerbung => { }
    end

    assert_redirected_to bewerbung_path(assigns(:bewerbung))
  end

  test "should show bewerbung" do
    get :show, :id => bewerbungs(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bewerbungs(:one).id
    assert_response :success
  end

  test "should update bewerbung" do
    put :update, :id => bewerbungs(:one).id, :bewerbung => { }
    assert_redirected_to bewerbung_path(assigns(:bewerbung))
  end

  test "should destroy bewerbung" do
    assert_difference('Bewerbung.count', -1) do
      delete :destroy, :id => bewerbungs(:one).id
    end

    assert_redirected_to bewerbungs_path
  end
end
