# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Card.delete_all

f = []
f = (2..10).to_a
f << 'J' << 'Q' << 'K' << 'A'

f.each do |x|
  (1..4).to_a.each do |y|
    case y
    when 1
      y = 'diamond'
    when 2
      y = 'club'
    when 3
      y = 'heart'
    when 4
      y = 'spade'
    end
    z = x
    case z
    when 'A'
      z = 11
    when 'J'
      z = 10
    when 'Q'
      z = 10
    when 'K'
      z = 10
    end
    c = Card.create(:face => x, :suit => y, :value => z)
  end
end