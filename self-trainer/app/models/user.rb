class User < ApplicationRecord
  has_secure_password
  
  def bmr
    # converting weight from lbs to kgs
    weight = self.start_weight / 2.2
    # converting height from inches to cm
    height = self.height * 2.54
    # Using Harris-Benedict Equation to find bmr
    if self.sex.downcase == 'male'
      bmr = 66 + (13.7 * weight) + (5 * height) - (6.8 * self.age)
    elsif self.sex.downcase == 'female'
      bmr = 655 + (9.6 * weight) + (1.8 * height) - (4.7 * self.age)
    end
    bmr
  end

  def tdee
    self.bmr * self.active
  end

  def protein
    self.start_weight * 1
  end

  def fats
    self.fat * self.start_weight
  end

  def carbs
    if self.goal == 'Lose Weight'
      carb = tdee.round - (tdee.round * 0.20)
      proteins = protein * 4
      fat = fats * 9
    elsif self.goal == 'Gain Muscle'
      carb = tdee.round
    end
    proteins = protein * 4
    fat = fats * 9
    carbs = (carb - proteins - fat) / 4
    carbs
  end

end
