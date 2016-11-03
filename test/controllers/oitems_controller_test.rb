require 'test_helper'

class OitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oitem = oitems(:one)
  end

  test "should get index" do
    get oitems_url
    assert_response :success
  end

  test "should get new" do
    get new_oitem_url
    assert_response :success
  end

  test "should create oitem" do
    assert_difference('Oitem.count') do
      post oitems_url, params: { oitem: { text: @oitem.text, title: @oitem.title, url: @oitem.url, user_id: @oitem.user_id } }
    end

    assert_redirected_to oitem_url(Oitem.last)
  end

  test "should show oitem" do
    get oitem_url(@oitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_oitem_url(@oitem)
    assert_response :success
  end

  test "should update oitem" do
    patch oitem_url(@oitem), params: { oitem: { text: @oitem.text, title: @oitem.title, url: @oitem.url, user_id: @oitem.user_id } }
    assert_redirected_to oitem_url(@oitem)
  end

  test "should destroy oitem" do
    assert_difference('Oitem.count', -1) do
      delete oitem_url(@oitem)
    end

    assert_redirected_to oitems_url
  end
end
