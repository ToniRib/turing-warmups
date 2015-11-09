 ALLERGENS = { cats: 128,
               pollen: 64,
               chocolate: 32,
               tomatoes: 16,
               strawberries: 8,
               shellfish: 4,
               peanuts: 2,
               eggs: 1 }

class Allergy
  def translate(num)
    allergies = []

    ALLERGENS.each do |item, score|
      if num - score >= 0
        allergies << item.to_s
        num -= score
      end
    end
    
    allergies
  end
end
