require 'test_helper'

class TextMapsControllerTest < ActionController::TestCase
  setup do
    @text_map = text_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_map" do
    assert_difference('TextMap.count') do
      post :create, text_map: {  }
    end

    assert_redirected_to text_map_path(assigns(:text_map))
  end

  test "should show text_map" do
    get :show, id: @text_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_map
    assert_response :success
  end

  test "should update text_map" do
    patch :update, id: @text_map, text_map: {  }
    assert_redirected_to text_map_path(assigns(:text_map))
  end

  test "should destroy text_map" do
    assert_difference('TextMap.count', -1) do
      delete :destroy, id: @text_map
    end

    assert_redirected_to text_maps_path
  end
end
