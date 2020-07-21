require "application_system_test_case"

class DownloadedFilesTest < ApplicationSystemTestCase
  setup do
    @downloaded_file = downloaded_files(:one)
  end

  test "visiting the index" do
    visit downloaded_files_url
    assert_selector "h1", text: "Downloaded Files"
  end

  test "creating a Downloaded file" do
    visit downloaded_files_url
    click_on "New Downloaded File"

    fill_in "Company", with: @downloaded_file.company
    fill_in "Email", with: @downloaded_file.email
    fill_in "File", with: @downloaded_file.file
    fill_in "Name", with: @downloaded_file.name
    click_on "Create Downloaded file"

    assert_text "Downloaded file was successfully created"
    click_on "Back"
  end

  test "updating a Downloaded file" do
    visit downloaded_files_url
    click_on "Edit", match: :first

    fill_in "Company", with: @downloaded_file.company
    fill_in "Email", with: @downloaded_file.email
    fill_in "File", with: @downloaded_file.file
    fill_in "Name", with: @downloaded_file.name
    click_on "Update Downloaded file"

    assert_text "Downloaded file was successfully updated"
    click_on "Back"
  end

  test "destroying a Downloaded file" do
    visit downloaded_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Downloaded file was successfully destroyed"
  end
end
