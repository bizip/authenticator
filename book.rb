dial_book = {
  'Kigali' => '111',
  'Musanze' => '112',
  'Rubavu' => '113',
  'Muhanga' => '114',
  'Buare' => '115'
}

# get sity names
def get_city_names(list_cities)
  list_cities.each do |k, _v|
    puts k
  end
end

# get area code
def get_area_code(city, list_code)
  list_code.each do |key, value|
    return "City code is #{value}"
  end
end
# loop

attempts = 1
while attempts < 5
  puts 'Do you want to look up a city code based on the area code (Y/N):'
  input = gets.chomp
  puts get_city_names(dial_book)
  25.times { print '_' }
  puts
  puts 'Which cities do you whantt to look up the code'
  input_city = gets.chomp
  code=get_area_code(input_city, dial_book)
  puts code

  break if input != 'y'

  attempts += 1
end
