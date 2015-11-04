class HexColors
  def dominant_color(hex_code)
    red = hex_code[1..2]
    green = hex_code[3..4]
    blue = hex_code[5..6]

    if compare_two_colors(red, green) == 1 && compare_two_colors(red, blue) == 1
      return 'red'
    elsif compare_two_colors(green, red) == 1 &&
      compare_two_colors(green, blue) == 1
      return 'green'
    elsif compare_two_colors(blue, red) == 1 &&
      compare_two_colors(blue, green) == 1
      return 'blue'
    elsif compare_two_colors(blue, red) == 0
      return 'magenta'
    elsif compare_two_colors(blue, green) == 0
      return 'cyan'
    elsif compare_two_colors(red, green) == 0
      return 'yellow'
    else
      return 'no one cares about this color'
    end
  end

  def compare_two_colors(color1, color2)
    color1 <=> color2
  end
end
