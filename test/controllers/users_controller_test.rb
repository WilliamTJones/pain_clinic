require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  xtest "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  xtest "should get new" do
    get :new
    assert_response :success
  end

  xtest "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, passcode: @user.passcode }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  xtest "should show user" do
    get :show, id: @user
    assert_response :success
  end

  xtest "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  xtest "should update user" do
    patch :update, id: @user, user: { email: @user.email, passcode: @user.passcode }
    assert_redirected_to user_path(assigns(:user))
  end

  xtest "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
