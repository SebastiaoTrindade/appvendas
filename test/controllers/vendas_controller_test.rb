require 'test_helper'

class VendasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendas_index_url
    assert_response :success
  end

  test "should get new" do
    get vendas_new_url
    assert_response :success
  end

  test "should get create" do
    get vendas_create_url
    assert_response :success
  end

  test "should get show" do
    get vendas_show_url
    assert_response :success
  end

end
