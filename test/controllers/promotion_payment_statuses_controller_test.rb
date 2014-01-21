require 'test_helper'

class PromotionPaymentStatusesControllerTest < ActionController::TestCase
  setup do
    @promotion_payment_status = promotion_payment_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotion_payment_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion_payment_status" do
    assert_difference('PromotionPaymentStatus.count') do
      post :create, promotion_payment_status: { description: @promotion_payment_status.description, name: @promotion_payment_status.name }
    end

    assert_redirected_to promotion_payment_status_path(assigns(:promotion_payment_status))
  end

  test "should show promotion_payment_status" do
    get :show, id: @promotion_payment_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion_payment_status
    assert_response :success
  end

  test "should update promotion_payment_status" do
    patch :update, id: @promotion_payment_status, promotion_payment_status: { description: @promotion_payment_status.description, name: @promotion_payment_status.name }
    assert_redirected_to promotion_payment_status_path(assigns(:promotion_payment_status))
  end

  test "should destroy promotion_payment_status" do
    assert_difference('PromotionPaymentStatus.count', -1) do
      delete :destroy, id: @promotion_payment_status
    end

    assert_redirected_to promotion_payment_statuses_path
  end
end
