# Now lets work with shape

class Team

    def initialize(name,player)
        setName(name)
        setNum(player)
    end

    # Setter for setting these
    def setName(name)
        @team_name = name
    end
    def setNum(player)
        @nm_player = player
    end

    # Private to not get name and num 
    private
    def name
        @team_name
    end
    def num
        @nm_player
    end
end

class Player < Team

    # Initializing  team name and nm player also using super to not use again
    def initialize(tm_name,nm_player)
        super(tm_name,nm_player)
        setPlayers
    end

    # In this method are created all team players . As Array
    def setPlayers
        @player = []
        for i in 0..num-1 do
            @player << gets.chomp
        end
    end

    # This method gets all info about this team
    def getPlayer
        "Ekipi: #{name} ka: #{num} dhe lojtaret: #{@player}" 
    end

    # Private method player you cant get player 
    private 
    def player
        @player
    end
end

# use irb -r ...
# initialize ( Team_Name, Number_Players )
