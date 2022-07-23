users = [{ name: 'bizimungu', password: 'bizimungu' },
         { name: 'pascal', password: 'pascal' },
         { name: 'issa', password: 'issa' },
         { name: 'fazir', password: 'fazir' },
         { name: 'bizp', password: 'bizp' }]

def authenticate_user(username, password, user_data)
  user_data.each do |single_user|
    return single_user if single_user[:name] == username && single_user[:password] == password
  end
  'Credentials were not correct'
end

puts 'Welcome to authenticator'
25.times { print '_' }
puts
puts 'This program will take the input from he user and compare password'
puts 'If password is correct you will be directed to the user object'

attempts = 1

while attempts <= 3
  puts 'Enter your username :'
  puts
  username = gets.chomp.downcase
  puts
  puts 'Enter your password :'
  puts
  password = gets.chomp
  puts

  authenticate = authenticate_user(username, password, users)
  puts authenticate

  puts 'press n tot quit or any other key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
