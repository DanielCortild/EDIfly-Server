require 'test_helper'

class ProductBriefingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_briefing = product_briefings(:one)
  end

  test "should get index" do
    get product_briefings_url
    assert_response :success
  end

  test "should get new" do
    get new_product_briefing_url
    assert_response :success
  end

  test "should create product_briefing" do
    assert_difference('ProductBriefing.count') do
      post product_briefings_url, params: { product_briefing: { filename: @product_briefing.filename, title: @product_briefing.title } }
    end

    assert_redirected_to product_briefing_url(ProductBriefing.last)
  end

  test "should show product_briefing" do
    get product_briefing_url(@product_briefing)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_briefing_url(@product_briefing)
    assert_response :success
  end

  test "should update product_briefing" do
    patch product_briefing_url(@product_briefing), params: { product_briefing: { filename: @product_briefing.filename, title: @product_briefing.title } }
    assert_redirected_to product_briefing_url(@product_briefing)
  end

  test "should destroy product_briefing" do
    assert_difference('ProductBriefing.count', -1) do
      delete product_briefing_url(@product_briefing)
    end

    assert_redirected_to product_briefings_url
  end
end
