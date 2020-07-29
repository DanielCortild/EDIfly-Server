require "application_system_test_case"

class ProductBriefingsTest < ApplicationSystemTestCase
  setup do
    @product_briefing = product_briefings(:one)
  end

  test "visiting the index" do
    visit product_briefings_url
    assert_selector "h1", text: "Product Briefings"
  end

  test "creating a Product briefing" do
    visit product_briefings_url
    click_on "New Product Briefing"

    fill_in "Filename", with: @product_briefing.filename
    fill_in "Title", with: @product_briefing.title
    click_on "Create Product briefing"

    assert_text "Product briefing was successfully created"
    click_on "Back"
  end

  test "updating a Product briefing" do
    visit product_briefings_url
    click_on "Edit", match: :first

    fill_in "Filename", with: @product_briefing.filename
    fill_in "Title", with: @product_briefing.title
    click_on "Update Product briefing"

    assert_text "Product briefing was successfully updated"
    click_on "Back"
  end

  test "destroying a Product briefing" do
    visit product_briefings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product briefing was successfully destroyed"
  end
end
