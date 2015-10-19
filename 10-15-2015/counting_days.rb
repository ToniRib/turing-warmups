months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
year = 8 # 2+0+1+5

# total = 0
# months.each do |month|
#   total +=
# end

def create_date_value
  
  1.upto(months.length) do |month|
    1.upto(month) do |day|
      arr << ["2015#{day}#{month}", day_of_week]
    end
  end
end
