require 'test_helper'

class LoadImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load_image = load_images(:one)
  end

  test "should get index" do
    get load_images_url
    assert_response :success
  end

  test "should get new" do
    get new_load_image_url
    assert_response :success
  end

  test "should create load_image" do
    assert_difference('LoadImage.count') do
      post load_images_url, params: { load_image: { description: @load_image.description, name: @load_image.name, picture: @load_image.picture } }
    end

    assert_redirected_to load_image_url(LoadImage.last)
  end

  test "should show load_image" do
    get load_image_url(@load_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_image_url(@load_image)
    assert_response :success
  end

  test "should update load_image" do
    patch load_image_url(@load_image), params: { load_image: { description: @load_image.description, name: @load_image.name, picture: @load_image.picture } }
    assert_redirected_to load_image_url(@load_image)
  end

  test "should destroy load_image" do
    assert_difference('LoadImage.count', -1) do
      delete load_image_url(@load_image)
    end

    assert_redirected_to load_images_url
  end
end
