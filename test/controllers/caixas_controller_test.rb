require 'test_helper'

class CaixasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caixas_index_url
    assert_response :success
  end

  test "should get show" do
    get caixas_show_url
    assert_response :success
  end

end
