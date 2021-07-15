require 'test_helper'

class OrderdetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderdetails_index_url
    assert_response :success
  end

  test "should get new" do
    get orderdetails_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderdetails_edit_url
    assert_response :success
  end

  test "should get _form" do
    get orderdetails__form_url
    assert_response :success
  end

end
