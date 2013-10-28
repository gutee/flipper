require 'test_helper'

class FlipsControllerTest < ActionController::TestCase
  setup do
    @flip = flips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flip" do
    assert_difference('Flip.count') do
      post :create, flip: { body: @flip.body, user_id: @flip.user_id }
    end

    assert_redirected_to flip_path(assigns(:flip))
  end

  test "should show flip" do
    get :show, id: @flip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flip
    assert_response :success
  end

  test "should update flip" do
    put :update, id: @flip, flip: { body: @flip.body, user_id: @flip.user_id }
    assert_redirected_to flip_path(assigns(:flip))
  end

  test "should destroy flip" do
    assert_difference('Flip.count', -1) do
      delete :destroy, id: @flip
    end

    assert_redirected_to flips_path
  end
end
