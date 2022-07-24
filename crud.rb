require 'bundler/inline'
gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

module Crud
  require 'bcrypt'
  puts "Module clud activated"

  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def Crud.create_secure_users(user_list)
    user_list.each do |record|
      record[:password] = create_hash_digest(record[:password])
    end
    user_list
  end

  def Crud.authenticate_user(username, _password, list_of_users)
    list_of_users.each do |record|
      return record if record[:username] == username && verify_hash_digest(record[:password]) == _password
    end
    'credentials were not correct'
  end
end
