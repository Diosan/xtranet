require 'test_helper'

class GalleryImagesControllerTest < ActionController::TestCase
  setup do
    @gallery_image = gallery_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallery_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallery_image" do
    assert_difference('GalleryImage.count') do
      post :create, gallery_image: { description: @gallery_image.description, gallery_id: @gallery_image.gallery_id, image: @gallery_image.image, text: @gallery_image.text, title: @gallery_image.title }
    end

    assert_redirected_to gallery_image_path(assigns(:gallery_image))
  end

  test "should show gallery_image" do
    get :show, id: @gallery_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallery_image
    assert_response :success
  end

  test "should update gallery_image" do
    patch :update, id: @gallery_image, gallery_image: { description: @gallery_image.description, gallery_id: @gallery_image.gallery_id, image: @gallery_image.image, text: @gallery_image.text, title: @gallery_image.title }
    assert_redirected_to gallery_image_path(assigns(:gallery_image))
  end

  test "should destroy gallery_image" do
    assert_difference('GalleryImage.count', -1) do
      delete :destroy, id: @gallery_image
    end

    assert_redirected_to gallery_images_path
  end
end
