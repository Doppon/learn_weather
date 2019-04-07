require 'test_helper'

class EnglishWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @english_word = english_words(:one)
  end

  test "should get index" do
    get english_words_url
    assert_response :success
  end

  test "should get new" do
    get new_english_word_url
    assert_response :success
  end

  test "should create english_word" do
    assert_difference('EnglishWord.count') do
      post english_words_url, params: { english_word: { sentence: @english_word.sentence, sentence_meaning: @english_word.sentence_meaning, word: @english_word.word, word_meaning: @english_word.word_meaning } }
    end

    assert_redirected_to english_word_url(EnglishWord.last)
  end

  test "should show english_word" do
    get english_word_url(@english_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_english_word_url(@english_word)
    assert_response :success
  end

  test "should update english_word" do
    patch english_word_url(@english_word), params: { english_word: { sentence: @english_word.sentence, sentence_meaning: @english_word.sentence_meaning, word: @english_word.word, word_meaning: @english_word.word_meaning } }
    assert_redirected_to english_word_url(@english_word)
  end

  test "should destroy english_word" do
    assert_difference('EnglishWord.count', -1) do
      delete english_word_url(@english_word)
    end

    assert_redirected_to english_words_url
  end
end
