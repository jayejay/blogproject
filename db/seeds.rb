# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([{first_name: 'Julian', last_name: 'Eissing', nick_name: 'Jay', admin: 1, moderator: 1, status: 1},
            {first_name: 'Björn', last_name: 'Lundt', nick_name: 'Azzaelo', admin: 1, moderator: 1, status: 1}
            ])