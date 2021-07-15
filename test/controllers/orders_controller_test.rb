require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get new" do
    get orders_new_url
    assert_response :success
  end

  test "should get edit" do
    get orders_edit_url
    assert_response :success
  end

  test "should get _form" do
    get orders__form_url
    assert_response :success
  end

end
