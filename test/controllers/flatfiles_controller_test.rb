require 'test_helper'

class FlatfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flatfile = flatfiles(:one)
  end

  test "should get index" do
    get flatfiles_url, as: :json
    assert_response :success
  end

  test "should create flatfile" do
    assert_difference('Flatfile.count') do
      post flatfiles_url, params: { flatfile: { function_names: @flatfile.function_names, package_names: @flatfile.package_names } }, as: :json
    end

    assert_response 201
  end

  test "should show flatfile" do
    get flatfile_url(@flatfile), as: :json
    assert_response :success
  end

  test "should update flatfile" do
    patch flatfile_url(@flatfile), params: { flatfile: { function_names: @flatfile.function_names, package_names: @flatfile.package_names } }, as: :json
    assert_response 200
  end

  test "should destroy flatfile" do
    assert_difference('Flatfile.count', -1) do
      delete flatfile_url(@flatfile), as: :json
    end

    assert_response 204
  end
end
