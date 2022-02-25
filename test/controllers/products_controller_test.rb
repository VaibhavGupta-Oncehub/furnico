require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show_arrivals" do
    get products_show_arrivals_url
    assert_response :success
  end

  test "should get show_features" do
    get products_show_features_url
    assert_response :success
  end

end
