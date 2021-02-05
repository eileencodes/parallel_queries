require "test_helper"

class SucculentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @succulent = succulents(:one)
  end

  test "should get index" do
    get succulents_url
    assert_response :success
  end

  test "should get new" do
    get new_succulent_url
    assert_response :success
  end

  test "should create succulent" do
    assert_difference('Succulent.count') do
      post succulents_url, params: { succulent: { name: @succulent.name } }
    end

    assert_redirected_to succulent_url(Succulent.last)
  end

  test "should show succulent" do
    get succulent_url(@succulent)
    assert_response :success
  end

  test "should get edit" do
    get edit_succulent_url(@succulent)
    assert_response :success
  end

  test "should update succulent" do
    patch succulent_url(@succulent), params: { succulent: { name: @succulent.name } }
    assert_redirected_to succulent_url(@succulent)
  end

  test "should destroy succulent" do
    assert_difference('Succulent.count', -1) do
      delete succulent_url(@succulent)
    end

    assert_redirected_to succulents_url
  end
end
