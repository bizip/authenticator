require 'bundler/inline'

users = [{ username: 'bizimungu', password: 'bizimungu' },
         { username: 'pascal', password: 'pascal' },
         { username: 'issa', password: 'issa' },
         { username: 'fazir', password: 'fazir' },
         { username: 'bizp', password: 'bizp' }]

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(user_list)
  user_list.each do |record|
    record[:password] = create_hash_digest(record[:password])
  end
  user_list
end

newPassword = create_hash_digest('password1')
secured = create_secure_users(users)

def authenticate_user(username, _password, list_of_users)
  list_of_users.each do |record|
    return record if record[:username] == username && _password == verify_hash_digest(record[:password])
  end
  'credentials were not correct'
end

auth=authenticate_user('bizimungu', 'bizimungu', secured)
puts auth
