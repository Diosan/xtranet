require 'test_helper'

class PromotionsControllerTest < ActionController::TestCase
  setup do
    @promotion = promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion" do
    assert_difference('Promotion.count') do
      post :create, promotion: { 2}: @promotion.2}, amount_reimbursed: @promotion.amount_reimbursed, brand_id: @promotion.brand_id, budget_amount: @promotion.budget_amount, currency_id: @promotion.currency_id, payment_date: @promotion.payment_date, payment_reference: @promotion.payment_reference, promotion_category_id: @promotion.promotion_category_id, promotion_payment_status: @promotion.promotion_payment_status, region_id: @promotion.region_id, split: @promotion.split }
    end

    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should show promotion" do
    get :show, id: @promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion
    assert_response :success
  end

  test "should update promotion" do
    patch :update, id: @promotion, promotion: { 2}: @promotion.2}, amount_reimbursed: @promotion.amount_reimbursed, brand_id: @promotion.brand_id, budget_amount: @promotion.budget_amount, currency_id: @promotion.currency_id, payment_date: @promotion.payment_date, payment_reference: @promotion.payment_reference, promotion_category_id: @promotion.promotion_category_id, promotion_payment_status: @promotion.promotion_payment_status, region_id: @promotion.region_id, split: @promotion.split }
    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should destroy promotion" do
    assert_difference('Promotion.count', -1) do
      delete :destroy, id: @promotion
    end

    assert_redirected_to promotions_path
  end
end
