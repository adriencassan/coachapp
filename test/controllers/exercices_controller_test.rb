require 'test_helper'

class ExercicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exercices_new_url
    assert_response :success
  end

  test "should get create" do
    get exercices_create_url
    assert_response :success
  end

end
