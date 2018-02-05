require 'test_helper'

class QuoteOfTheDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote_of_the_day = quote_of_the_days(:one)
  end

  test "should get index" do
    get quote_of_the_days_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_of_the_day_url
    assert_response :success
  end

  test "should create quote_of_the_day" do
    assert_difference('QuoteOfTheDay.count') do
      post quote_of_the_days_url, params: { quote_of_the_day: { author: @quote_of_the_day.author, message: @quote_of_the_day.message, narration: @quote_of_the_day.narration, posted_by: @quote_of_the_day.posted_by, quote: @quote_of_the_day.quote } }
    end

    assert_redirected_to quote_of_the_day_url(QuoteOfTheDay.last)
  end

  test "should show quote_of_the_day" do
    get quote_of_the_day_url(@quote_of_the_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_of_the_day_url(@quote_of_the_day)
    assert_response :success
  end

  test "should update quote_of_the_day" do
    patch quote_of_the_day_url(@quote_of_the_day), params: { quote_of_the_day: { author: @quote_of_the_day.author, message: @quote_of_the_day.message, narration: @quote_of_the_day.narration, posted_by: @quote_of_the_day.posted_by, quote: @quote_of_the_day.quote } }
    assert_redirected_to quote_of_the_day_url(@quote_of_the_day)
  end

  test "should destroy quote_of_the_day" do
    assert_difference('QuoteOfTheDay.count', -1) do
      delete quote_of_the_day_url(@quote_of_the_day)
    end

    assert_redirected_to quote_of_the_days_url
  end
end
