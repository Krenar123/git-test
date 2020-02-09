class Omega 
    attr_accessor :a, :x, :y, :n

    def fact
        f = 1
        i = 0
        n-1.times do
            f = f * i
            i += 1
        end
    end

    def print
        puts (y)
    end
end

nali = Omega.new

nali.a = gets.to_i

puts(nali.a)