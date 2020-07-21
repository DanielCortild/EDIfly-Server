require 'test_helper'

class DownloadedFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @downloaded_file = downloaded_files(:one)
  end

  test "should get index" do
    get downloaded_files_url
    assert_response :success
  end

  test "should get new" do
    get new_downloaded_file_url
    assert_response :success
  end

  test "should create downloaded_file" do
    assert_difference('DownloadedFile.count') do
      post downloaded_files_url, params: { downloaded_file: { company: @downloaded_file.company, email: @downloaded_file.email, file: @downloaded_file.file, name: @downloaded_file.name } }
    end

    assert_redirected_to downloaded_file_url(DownloadedFile.last)
  end

  test "should show downloaded_file" do
    get downloaded_file_url(@downloaded_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_downloaded_file_url(@downloaded_file)
    assert_response :success
  end

  test "should update downloaded_file" do
    patch downloaded_file_url(@downloaded_file), params: { downloaded_file: { company: @downloaded_file.company, email: @downloaded_file.email, file: @downloaded_file.file, name: @downloaded_file.name } }
    assert_redirected_to downloaded_file_url(@downloaded_file)
  end

  test "should destroy downloaded_file" do
    assert_difference('DownloadedFile.count', -1) do
      delete downloaded_file_url(@downloaded_file)
    end

    assert_redirected_to downloaded_files_url
  end
end
