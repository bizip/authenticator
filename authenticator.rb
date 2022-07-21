users = [     {name:"bizimungu",password:"bizimungu"},
    {name:"pascal", password:"Pascal"},
    {name:"issa", password:"issa"},
    {name:"fazir", password:"fazir"},
    {name:"bizp", password:"bizp"}
]

puts "Welcome to authenticator"
25.times {print "_"}
puts
puts "This program will take the input from he user and compare password"
puts "If password is correct you will be directed to the user object"

attempts=1;

while attempts <=3
    puts "Enter your username :"
    puts
    username=gets.chomp.downcase
    puts
    puts "Enter your password :"
    puts
    password = gets.chomp
    puts

    users.each do |user|
        if user[:name] == username && user[:password] == password
            puts user
            break
        else
            puts "Credentials were not correct"
        end
    end

    puts "press n tot quit or any other key to continue"
    input = gets.chomp.downcase
    if input=="n"
        break
    end
    attempts +=1;
end

