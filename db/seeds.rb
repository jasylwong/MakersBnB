users = [
  {name: 'Jon Snow', email: 'jon_snow@nightswatch.com'},
  {name: 'Jaime Lannister', email: 'jim_lannister@hearmeroar.com'}
]

users.each do |u|
  User.create(u)
end
