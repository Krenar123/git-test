# Creating a ruby quiz game

hash = Hash.new
ans = Hash.new
q_num = gets.to_i
id = 1
q_num.times do
    question = gets.chomp
    hash[id] = question
    answer = gets.chomp
    ans[id] = answer
    id += 1
end
result  = 0
hash.each do
    |key,value|
    puts value + " a-Po , b-Jo"
    given_ans = gets.chomp
    if given_ans == ans[key]
        result += 1
    end
end
puts "#{result} / #{id-1}"