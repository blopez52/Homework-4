require 'test_helper'

class TourdatesControllerTest < ActionController::TestCase
  setup do
    @tourdate = tourdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourdate" do
    assert_difference('Tourdate.count') do
      post :create, tourdate: { description: @tourdate.description, status: @tourdate.status }
    end

    assert_redirected_to tourdate_path(assigns(:tourdate))
  end

  test "should show tourdate" do
    get :show, id: @tourdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourdate
    assert_response :success
  end

  test "should update tourdate" do
    patch :update, id: @tourdate, tourdate: { description: @tourdate.description, status: @tourdate.status }
    assert_redirected_to tourdate_path(assigns(:tourdate))
  end

  test "should destroy tourdate" do
    assert_difference('Tourdate.count', -1) do
      delete :destroy, id: @tourdate
    end

    assert_redirected_to tourdates_path
  end
end
