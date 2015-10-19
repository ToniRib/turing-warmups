require 'minitest/autorun'
require 'minitest/pride'
require_relative 'allergy'

class AllergyTest < Minitest::Test
  def test_detects_peanut_and_chocolate_allergy
    allergy_tester = Allergy.new
    assert_equal ['chocolate', 'peanuts'], allergy_tester.translate(34)
  end

  def test_detects_peanut_only_allergy
    allergy_tester = Allergy.new
    assert_equal ['peanuts'], allergy_tester.translate(2)
  end

  def test_detects_eggs_and_peanut_allergy
    allergy_tester = Allergy.new
    assert_equal ['peanuts','eggs'], allergy_tester.translate(3)
  end
end
