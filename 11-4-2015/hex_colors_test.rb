require 'minitest'
require_relative 'hex_colors'

class HexColorsTest < Minitest::Test
  def test_recognizes_red_as_dominant_color
    hex = HexColors.new

    assert_equal 'red', hex.dominant_color('#ff0000')
  end

  def test_recognizes_green_as_dominant_color
    hex = HexColors.new

    assert_equal 'green', hex.dominant_color('#00ff00')
  end

  def test_recognizes_blue_as_dominant_color
    hex = HexColors.new

    assert_equal 'blue', hex.dominant_color('#0000ff')
  end

  def test_recognizes_red_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'red', hex.dominant_color('#F6336A')
  end

  def test_recognizes_green_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'green', hex.dominant_color('#36D86A')
  end

  def test_recognizes_blue_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'blue', hex.dominant_color('#3698CA')
  end

  def test_recognizes_magenta_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'magenta', hex.dominant_color('#CA98CA')
  end

  def test_recognizes_cyan_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'cyan', hex.dominant_color('#01DEDE')
  end

  def test_recognizes_yellow_as_color_in_mixed_color
    hex = HexColors.new

    assert_equal 'yellow', hex.dominant_color('#DEDE01')
  end
end
