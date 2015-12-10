require 'test_helper'

class BarbersControllerTest < ActionController::TestCase
  setup do
    @barber = barbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barber" do
    assert_difference('Barber.count') do
      post :create, barber: { bio: @barber.bio, first_name: @barber.first_name, image_filename: @barber.image_filename, last_name: @barber.last_name, user_id: @barber.user_id }
    end

    assert_redirected_to barber_path(assigns(:barber))
  end

  test "should show barber" do
    get :show, id: @barber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barber
    assert_response :success
  end

  test "should update barber" do
    patch :update, id: @barber, barber: { bio: @barber.bio, first_name: @barber.first_name, image_filename: @barber.image_filename, last_name: @barber.last_name, user_id: @barber.user_id }
    assert_redirected_to barber_path(assigns(:barber))
  end

  test "should destroy barber" do
    assert_difference('Barber.count', -1) do
      delete :destroy, id: @barber
    end

    assert_redirected_to barbers_path
  end
end
