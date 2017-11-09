require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

# Write a unit test for the language_in method.
  def setup
    @person = Multilinguist.new
  end

  def test_return_language
    assert_equal "en", @person.language_in("Canada")
  end

  def test_language_returns_two_chars
    find_lang = @person.language_in("Canada")
    result = find_lang.length
    assert_equal(2, result)
  end

  def test_language_does_not_return_two_chars
    find_lang = @person.language_in("Canada")
    result = find_lang.length
    refute (result == 3)
  end

  def test_travel_to_uses_language_in
    assert_equal "fr", @person.travel_to("France")
  end

end
