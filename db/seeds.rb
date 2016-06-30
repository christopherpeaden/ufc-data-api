# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


res = HTTParty.get('http://ufc-data-api.ufc.com/api/v3/iphone/fighters/title_holders')

res.each do |fighter_data| 
  Fighter.create(
    first_name: fighter_data['first_name'],
    last_name: fighter_data['last_name'],
    nickname: fighter_data['nickname'],
    title_holder: fighter_data['title_holder'],
    weight_class: fighter_data['weight_class'],
    wins: fighter_data['wins'],
    losses: fighter_data['losses'],
    draws: fighter_data['draws']
  )
end 


