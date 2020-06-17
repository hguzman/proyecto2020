require 'test_helper'

class Personas::CarrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personas_carros_index_url
    assert_response :success
  end

  test "should get show" do
    get personas_carros_show_url
    assert_response :success
  end

  test "should get edit" do
    get personas_carros_edit_url
    assert_response :success
  end

  test "should get new" do
    get personas_carros_new_url
    assert_response :success
  end

end
