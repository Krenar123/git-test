class Nali

    attr_accessor :num, :per

    def isTrue(n,p)
        if @num == n && @per == p
            return 1
        
        else
            return 0
        end
    end
end

question ={
    '1' => "a",
    '2' => "b",
    '3' => "c"
}
questions = ["Sa duhet ", "Po duhet ", "Jo sduhet "]

nali = Nali.new
n = 0
result = 0

puts question["#{n+1}"]
until n == 3 do
    puts questions[n]
    answer = gets.chomp
    nali.num = n+1
    nali.per = answer
    result = result + nali.isTrue(n+1, question["#{n+1}"])
    n +=1
end
puts "Rezultati: #{result}/#{n} "