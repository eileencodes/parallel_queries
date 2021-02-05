require "test_helper"

class RosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rose = roses(:one)
  end

  test "should get index" do
    get roses_url
    assert_response :success
  end

  test "should get new" do
    get new_rose_url
    assert_response :success
  end

  test "should create rose" do
    assert_difference('Rose.count') do
      post roses_url, params: { rose: { name: @rose.name } }
    end

    assert_redirected_to rose_url(Rose.last)
  end

  test "should show rose" do
    get rose_url(@rose)
    assert_response :success
  end

  test "should get edit" do
    get edit_rose_url(@rose)
    assert_response :success
  end

  test "should update rose" do
    patch rose_url(@rose), params: { rose: { name: @rose.name } }
    assert_redirected_to rose_url(@rose)
  end

  test "should destroy rose" do
    assert_difference('Rose.count', -1) do
      delete rose_url(@rose)
    end

    assert_redirected_to roses_url
  end
end
