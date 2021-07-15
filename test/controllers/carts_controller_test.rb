require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carts_index_url
    assert_response :success
  end

  test "should get new" do
    get carts_new_url
    assert_response :success
  end

  test "should get edit" do
    get carts_edit_url
    assert_response :success
  end

  test "should get _form" do
    get carts__form_url
    assert_response :success
  end

end
