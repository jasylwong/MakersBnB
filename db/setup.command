cd /Users/student/Programming/Makers/Projects/MakersBnB

RACK_ENV=development rake db:drop
RACK_ENV=development rake db:create
RACK_ENV=development rake db:migrate
RACK_ENV=development rake db:seed
