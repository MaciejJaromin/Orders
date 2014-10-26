require 'test_helper'

class PlacedOrdersControllerTest < ActionController::TestCase
  setup do
    @placed_order = placed_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placed_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placed_order" do
    assert_difference('PlacedOrder.count') do
      post :create, placed_order: { customer_id: @placed_order.customer_id, time_placed: @placed_order.time_placed }
    end

    assert_redirected_to placed_order_path(assigns(:placed_order))
  end

  test "should show placed_order" do
    get :show, id: @placed_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placed_order
    assert_response :success
  end

  test "should update placed_order" do
    patch :update, id: @placed_order, placed_order: { customer_id: @placed_order.customer_id, time_placed: @placed_order.time_placed }
    assert_redirected_to placed_order_path(assigns(:placed_order))
  end

  test "should destroy placed_order" do
    assert_difference('PlacedOrder.count', -1) do
      delete :destroy, id: @placed_order
    end

    assert_redirected_to placed_orders_path
  end
end
