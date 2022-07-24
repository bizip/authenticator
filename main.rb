require_relative 'crud'

# $_LOAD_PATH << "."
# require crud

users = [{ username: 'bizimungu', password: 'bizimungu' },
         { username: 'pascal', password: 'pascal' },
         { username: 'issa', password: 'issa' },
         { username: 'fazir', password: 'fazir' },
         { username: 'bizp', password: 'bizp' }]

hashed_users= Crud.create_secure_users(users)
puts hashed_users