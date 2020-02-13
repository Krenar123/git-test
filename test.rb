# Creating a ruby quiz game

hash = Hash.new
name  = gets.chomp
id = 1

hash[id] = name

hash.each { |i| puts i[id]}