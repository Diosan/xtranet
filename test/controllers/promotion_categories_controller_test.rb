require 'test_helper'

class PromotionCategoriesControllerTest < ActionController::TestCase
  setup do
    @promotion_category = promotion_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotion_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion_category" do
    assert_difference('PromotionCategory.count') do
      post :create, promotion_category: { description: @promotion_category.description, name: @promotion_category.name }
    end

    assert_redirected_to promotion_category_path(assigns(:promotion_category))
  end

  test "should show promotion_category" do
    get :show, id: @promotion_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion_category
    assert_response :success
  end

  test "should update promotion_category" do
    patch :update, id: @promotion_category, promotion_category: { description: @promotion_category.description, name: @promotion_category.name }
    assert_redirected_to promotion_category_path(assigns(:promotion_category))
  end

  test "should destroy promotion_category" do
    assert_difference('PromotionCategory.count', -1) do
      delete :destroy, id: @promotion_category
    end

    assert_redirected_to promotion_categories_path
  end
end
