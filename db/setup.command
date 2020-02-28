cd /Users/student/Projects/MakersBnB


RACK_ENV=development rake db:create
RACK_ENV=development rake db:migrate
RACK_ENV=test rake db:migrate
RACK_ENV=development rake db:seed
