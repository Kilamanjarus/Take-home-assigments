require "csv"

# p CSV.read "price.csv"

# psudeo-code
# file = CSV.read "price.csv"
# target = file[0]
# target_price = target[1] (should be price of file[0])
# menu_items = file[1-.length]
# take difference of menu_item price from Target price, if it is positive, its possible, if it is negative, its not possible, and if it matches the remaining price the previous combo will work
file = CSV.read "price.csv"
target_price = file[0]
menu = file.drop(1)
# p menu
priced_menu = menu.sort_by { |a, b| b }.reverse
price_array = []
order_prices = 0
price_check = target_price[1].delete("$").to_f
# p menu
# p target
# p target_price = target[1]
priced_menu.each do |item|
  # p item[1]
  price_array << item[1].delete("$").to_f
end
# p price_array
# p price_array
price_array.each do |price|
  p target_price
  # p price
  if order_prices + price < price_check
    order_prices = order_prices + price
    p order_prices
  end
end
