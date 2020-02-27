require "pg"
def setup_test_database
# p "setting up database"

connection = PG.connect(dbname: "makers_bnb_test")

connection.exec("TRUNCATE spaces,users,bookings; ")
end