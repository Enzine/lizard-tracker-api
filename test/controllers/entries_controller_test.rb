require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url, as: :json
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { breakfast_comments: @entry.breakfast_comments, breakfast_crickets: @entry.breakfast_crickets, breakfast_veggies: @entry.breakfast_veggies, dinner_comments: @entry.dinner_comments, dinner_crikets: @entry.dinner_crikets, dinner_veggies: @entry.dinner_veggies, general_activity: @entry.general_activity, general_bath: @entry.general_bath, general_comments: @entry.general_comments, general_length: @entry.general_length, general_poop: @entry.general_poop, general_weight: @entry.general_weight } }, as: :json
    end

    assert_response 201
  end

  test "should show entry" do
    get entry_url(@entry), as: :json
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { breakfast_comments: @entry.breakfast_comments, breakfast_crickets: @entry.breakfast_crickets, breakfast_veggies: @entry.breakfast_veggies, dinner_comments: @entry.dinner_comments, dinner_crikets: @entry.dinner_crikets, dinner_veggies: @entry.dinner_veggies, general_activity: @entry.general_activity, general_bath: @entry.general_bath, general_comments: @entry.general_comments, general_length: @entry.general_length, general_poop: @entry.general_poop, general_weight: @entry.general_weight } }, as: :json
    assert_response 200
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry), as: :json
    end

    assert_response 204
  end
end
