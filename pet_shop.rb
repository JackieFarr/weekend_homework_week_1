def pet_shop_name(name)
  return @pet_shop[:name]
end
#
def total_cash(money)
 total_amount = @pet_shop[:admin][:total_cash]
  return total_amount
end
#
def add_or_remove_cash(place, money_to_add)
  @pet_shop[:admin][:total_cash] += money_to_add
end
#
def pets_sold(place)
  return @pet_shop[:admin][:pets_sold]
end
#
def increase_pets_sold(place, pets_to_add)
  @pet_shop[:admin][:pets_sold] += pets_to_add
end

def stock_count(place)
  @pet_shop[:pets].count
end
#
def pets_by_breed(place, pet_breed)
  result = []
  for breed in @pet_shop[:pets][:breed]
    if breed @pet_shop[:pets][:breed] == pet_breed
    result << pet_breed
    end
  end
  return result
end
#
#   end
# end
