module OmegaMethods
    # funksjoni input qe bohet add 
    def inputObj (na)
        puts("Jep vlerat e a,x,n: ")
        na.a = gets.to_i
        na.x = gets.to_i
        na.n = gets.to_i
    end
    # funksjoni per me gjet ypsilonin
    def ypsilon(na)
        return na.y = 3*(na.x + 1) + na.a*na.fact
    end
end

class Omega 
    include OmegaMethods
    attr_accessor :a, :x, :y, :n

    def fact
        f = 1
        
        for i in 1..n do
            f = f * i
        end
        return f
    end

    def print
        puts (y)
    end
end

nali = Omega.new

inputObj(nali)
puts(ypsilon(nali))
    