# User seeds -----------------------------------------
user_list = [
  ["Jason", "jason@gmail.com", "password"],
  ["Jack", "jack@hotmail.com", "PASSWORD"],
  ["Megan", "megan@yahoo.com", "megz1234"],
  ["Dafna", "dafna@outlook.com", "test!!"],
  ["Ziad", "ziad@mail.com", "2nd_test"]
]

user_list.each do |name, email, password|
  User.create( name: name, email: email, password: password)
end

# Space seeds -----------------------------------------
space_list = [
  ["Casa Bonita", "Muy buena", 50, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 1)],
  ["Space 2", "Great!", 45, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-02-12", "2020-04-13", User.find_by(id: 1)],
  ["Rad resort", "Totally rad", 30, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 1)],
  ["Happy house", "Very happy", 75, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 2)],
  ["Cat Castle", "Lots of cats", 99.99, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 2)],
  ["Misty Mountain", "Somewhat foggy", 13, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 3)],
  ["Fab flat", "Ab fab", 66, "https://si.wsj.net/public/resources/images/B3-DM067_RIGHTS_IM_20190319162958.jpg", "2020-03-11", "2020-04-11", User.find_by(id: 4)]
]

space_list.each do |name, description, price, url, from, to, user |
  Space.create( name: name, description: description, price: price, photo_url: url, available_from: from, available_to: to, user: user)
end

# Booking seeds -----------------------------------------
booking_list = [
  ["2020-04-12", User.find_by(id: 5), Space.find_by(id: 1), "false"],
  ["2020-05-05", User.find_by(id: 5), Space.find_by(id: 2), "false"],
  ["2020-06-28", User.find_by(id: 1), Space.find_by(id: 4), "false"],
  ["2021-03-01", User.find_by(id: 2), Space.find_by(id: 3), "false"],
  ["2020-11-19", User.find_by(id: 4), Space.find_by(id: 2), "false"],
  ["2020-08-25", User.find_by(id: 3), Space.find_by(id: 6), "true"]
]

booking_list.each do |date, user, space, confirmed|
  Booking.create( booking_date: date, user: user, space: space, confirmed: confirmed)
end
