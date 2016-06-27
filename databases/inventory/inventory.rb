# This is an inventory-taking program for IT professionals in office environments. 
# I had to do this at an old job once, so I can attest that it's a big pain in the neck.

# Options
# 1. View all users
# 2. View all hardware profiles
# 3. View all users with their assigned hardware
# 4. Add user
# update! adding a delete method here
# 5. Add hardware profile
# 6. Change a user's computer
# 7. View a count of all hardware in inventory.
# 8. Exit

# require gem
require 'sqlite3'

# select our SQLite3 database
db = SQLite3::Database.new("inventory.db")



option = 0


while option != 9

    menu = <<-opts_menu
        Options:
        1. View all users
        2. View all hardware profiles
        3. View all users with their assigned hardware
        4. Add user
        5. Delete user
        6. Add hardware profile
        7. Change a user's computer
        8. View a count of all hardware in inventory.
        9. Exit
    opts_menu
    
    
    if option == 1
        puts db.execute("SELECT users.name, users.office_number FROM users")
    elsif option == 2
        puts db.execute("SELECT hardware.name FROM hardware")
    elsif option == 3
       puts db.execute("SELECT users.name, users.office_number, hardware.name FROM users, hardware WHERE users.hardware_id = hardware.id")
    elsif option == 4
        puts "What is the new user's name?"
        user_name = gets.chomp
        puts "What is the user's office number?"
        office = gets.chomp.to_i
        puts "What is the ID number for their computer?"
        hw_id = gets.chomp.to_i
        
        db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", [user_name, office, hw_id])
        puts "User #{user_name} added."
    elsif option == 5
        puts "Which user do you want to delete?"
        user_to_delete = gets.chomp
        delete_command = <<-deleter
        DELETE FROM users WHERE name = "#{user_to_delete}"
        deleter
        db.execute(delete_command)
        puts "User #{user_to_delete} deleted."
    elsif option == 6
        puts "What is the new computer's name?"
        hw_name = gets.chomp
        puts "Is this a laptop or desktop computer?"
        
        laptop_or_desktop = gets.chomp
        
        if laptop_or_desktop == "laptop"
            desktop = "false"
        else
            desktop = "true"
        end

        time_now = Time.now.to_s
        db.execute("INSERT INTO hardware (name, desktop, date_of_addition) VALUES (?, ?, ?)", [hw_name, desktop, time_now])
        puts "User #{hw_name} added."
    elsif option == 7
        puts "Which user do you want to update?"
        user_to_update = gets.chomp 
        puts "What is the ID of their new computer?"
        new_hw_id = gets.chomp.to_i
        
        db.execute("UPDATE users SET hardware_id=? WHERE name=?;", [new_hw_id, user_to_update])
        
        hw_check = db.execute("SELECT hardware.name FROM hardware WHERE id = ?", [new_hw_id])
        puts "User #{user_to_update} is now assigned a #{hw_check}"
        
    elsif option == 8
        
        number_of_computer_types = db.execute("SELECT COUNT(id) FROM hardware")
        
        number_of_computer_types = number_of_computer_types[0][0]
        
        i = number_of_computer_types
        
        while i > 0
            
            number_of_i_computers = db.execute("SELECT COUNT(hardware_id) FROM users WHERE users.hardware_id = ?", [i])[0][0]
            
            if number_of_i_computers != 0
                computer_name = db.execute("SELECT hardware.name FROM hardware WHERE hardware.id = ?", [i])[0][0]
                puts "The office has #{number_of_i_computers} computer(s) with the name #{computer_name}"
            else
            end


        
            i -= 1
        end
        
        
        
    else
    end
    
    
    
    puts menu
    option = gets.chomp.to_i
end














# create inventory and hardware tables (if they're not there already)
# each create command is declared as a big string and run with db.execute separately

# create table of hardware
# create_hardware_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS hardware(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     desktop BOOLEAN,
#     date_of_addition TIMESTAMP
#   )
# SQL

# # create table of users
# create_users_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS users(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     office_number INTEGER,
#     hardware_id INTEGER,
#     FOREIGN KEY (hardware_id) REFERENCES hardware(id)
#   )
# SQL


# db.execute(create_users_cmd)
# db.execute(create_hardware_cmd)


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
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Brad Majors", 348, 4])
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Linda Stevens", 518, 2])
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["John O'Brien", 328, 2])
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Beth Harper", 506, 5])
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Todd Lindstrom", 148, 7])
# db.execute("INSERT INTO users (name, office_number, hardware_id) VALUES (?, ?, ?)", ["Jessica Ellis", 222, 1])

# Just testing our results
# hardware = db.execute("SELECT * FROM hardware")
# puts hardware

# users = db.execute("SELECT * FROM users")
# puts users