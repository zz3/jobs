require 'test_helper'

class BerufsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berufs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beruf" do
    assert_difference('Beruf.count') do
      post :create, :beruf => { }
    end

    assert_redirected_to beruf_path(assigns(:beruf))
  end

  test "should show beruf" do
    get :show, :id => berufs(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => berufs(:one).id
    assert_response :success
  end

  test "should update beruf" do
    put :update, :id => berufs(:one).id, :beruf => { }
    assert_redirected_to beruf_path(assigns(:beruf))
  end

  test "should destroy beruf" do
    assert_difference('Beruf.count', -1) do
      delete :destroy, :id => berufs(:one).id
    end

    assert_redirected_to berufs_path
  end
end
