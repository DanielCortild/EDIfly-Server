require "application_system_test_case"

class WhitepapersTest < ApplicationSystemTestCase
  setup do
    @whitepaper = whitepapers(:one)
  end

  test "visiting the index" do
    visit whitepapers_url
    assert_selector "h1", text: "Whitepapers"
  end

  test "creating a Whitepaper" do
    visit whitepapers_url
    click_on "New Whitepaper"

    fill_in "Filename", with: @whitepaper.filename
    fill_in "Title", with: @whitepaper.title
    click_on "Create Whitepaper"

    assert_text "Whitepaper was successfully created"
    click_on "Back"
  end

  test "updating a Whitepaper" do
    visit whitepapers_url
    click_on "Edit", match: :first

    fill_in "Filename", with: @whitepaper.filename
    fill_in "Title", with: @whitepaper.title
    click_on "Update Whitepaper"

    assert_text "Whitepaper was successfully updated"
    click_on "Back"
  end

  test "destroying a Whitepaper" do
    visit whitepapers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Whitepaper was successfully destroyed"
  end
end
