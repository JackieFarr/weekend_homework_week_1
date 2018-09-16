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
# # this didn't work:
# def pets_by_breed(place, pet_breed)
#   for pets in @pet_shop[:pets]
#     if pets[:breed] == pet_breed
#     end
#     return pets
#   end
# end

def pets_by_breed(pet_shop, breed)
   result = []
     for animal in pet_shop[:pets]
       if animal[:breed] == breed
         result << animal
       end
     end
     return result
end

# #
def find_pet_by_name(shops, name)
  for pet in shops[:pets]
    if pet[:name] == name
      return pet
    end
  end
return nil
end

def remove_pet_by_name(shops, name)
  for pet in shops[:pets]
    if pet[:name] == name
      shops[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shops, new_pet)
  shops[:pets].push(new_pet)
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end
