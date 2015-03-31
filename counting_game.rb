# 10 players
# count goes from 1 - 10
# when number % 7 == 0 direction switches (arr.reverse)
# when number % 11 == 0 skip a player when count += 1
require 'pp'
@count = 1

def game( number_of_players, count_end )
  identifier = (1..number_of_players).to_a
  players_up = identifier.collect! { |x| 'player' + x.to_s }
  play( players_up, count_end )
end

def play( players_up, count_end )
	until @count == count_end - 1
	  players_up.rotate!
	  @count += 1
	  if @count % 7 == 0
	  	players_up.reverse!
	  elsif @count % 11 == 0
	  	players_up.rotate!(2)
	  end
	end
	pp "#{players_up.first} says #{count_end}"
end

game( 17, 150 )
# game( 10, 100 )