# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("inventory.db")



# create inventory and hardware tables (if they're not there already)
# each create command is declared as a big string and run with db.execute separately

# create table of hardware
create_hardware_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS hardware(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    desktop BOOLEAN,
    date_of_addition TIMESTAMP
  )
SQL

# create table of users
create_users_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    office_number INTEGER,
    hardware_id INTEGER,
    FOREIGN KEY (hardware_id) REFERENCES hardware(id)
  )
SQL


db.execute(create_users_cmd)
db.execute(create_hardware_cmd)




# Code to seed hardware table with various computers
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Apple Macbook Air MJVE2LL", "false", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Apple MacBook Pro MB990LL", "false", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Acer Aspire E", "false", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Toshiba CB35", "false", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Lenovo Thinkpad X130e", "false", time_now])

# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["ASUS M32AD", "true", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Dell OptiPlex 780", "true", time_now])
# time_now = Time.now.to_s
# db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", ["Apple iMac MB398LL", "true", time_now])


# code to seed users table with office workers
db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Joe Smith", 548, 2])
db.execute("INSERT IdNTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Sarah Connor", 528, 1])


# Just testing our results
# hardware = db.execute("SELECT * FROM hardware")
# puts hardware


users = db.execute("SELECT * FROM users")
puts users