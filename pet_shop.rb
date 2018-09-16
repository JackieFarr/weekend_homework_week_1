def pet_shop_name(pet_shop_name)
  return pet_shop_name[:name]
end
#
def total_cash(pet_shop_name)
 total_amount = pet_shop_name[:admin][:total_cash]
  return total_amount
end
#
def add_or_remove_cash(place, money_to_add)
  place[:admin][:total_cash] += money_to_add
end
#
def pets_sold(pet_shop_name)
  return pet_shop_name[:admin][:pets_sold]
end
#
def increase_pets_sold(pet_shop_name, pets_to_add)
  pet_shop_name[:admin][:pets_sold] += pets_to_add
end

def stock_count(pet_shop_name)
  pet_shop_name[:pets].count
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

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shops, pet, customer)

  if  pet == nil || customer_can_afford_pet(customer, pet) == false
    return false

  else
  add_pet_to_customer(customer, pet)
  increase_pets_sold(shops, 1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(shops, pet[:price])
  end
end
