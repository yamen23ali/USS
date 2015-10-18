# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(id: 1, name: 'customer')
Account.create(id: 2, name: 'admin')

Status.create(id: 1, name: 'active')

Category.create(id: 1, name: 'cat1')

SubCategory.create(id: 1, name: 'subcat1', category_id: 1 )

# Passsword is ( test1234 )
User.create(
	id: 1, account_id: 2, first_name: 'yamen', last_name: 'ali', 
    created_at: "2015-10-18 09:58:24", updated_at: "2015-10-18 09:58:43", 
    email: "yamen23ali@gmail.com", 
    encrypted_password: "$2a$10$t4ChCjZBjYSk63NgT3zB2OgQXOifN/tGeOMZhZWWz8aexGKQs1Tve", 
    sign_in_count: 1, 
    current_sign_in_at: "2015-10-18 09:58:43", last_sign_in_at: "2015-10-18 09:58:43", 
    confirmed_at: "2015-10-18 09:58:31", confirmation_sent_at: "2015-10-18 09:58:24", 
)

