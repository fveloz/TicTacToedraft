# Tic Tac Toe

#Sample board so players know how the board is labeled. 
def sample_board
	puts " 1 | 2 | 3"
  puts "-----------"
  puts " 4 | 5 | 6"
  puts "-----------"
  puts " 7 | 8 | 9"
	end


# This is a Hash with keys presenting positions on the board. 
# As the player makes a turn the values will be added to the corrisponding keys. 
@board = {
  "1"=>" ","2"=>" ","3"=>" ",
  "4"=>" ","5"=>" ","6"=>" ",
  "7"=>" ","8"=>" ","9"=>" "
}


#Assigning the board pieces to the players
bpieces = ["X" , "O"]
@p1 = bpieces.sample
@p2 = if @p1 == "X"
				@p2 = "O"
			else 
				@p2 = "X"
			end

#Initiating the game: retrieving the players name and informing them of their game piece
#Displaying the sample board for the player
puts "Hello! Lets play some Tic Tac Toe?"
puts "Player 1, what is your name?"
@p1_name = gets.capitalize.chomp
puts "And player 2, what is your name?"
@p2_name = gets.capitalize.chomp
puts "Nice to meet you #{@p1_name} you will be #{@p1}. "
puts "And nice to meet you #{@p2_name} you will be #{@p2}. "
puts "Lets begin."
sample_board
puts "Each number on the above board represents a position on the board."

# will ask the players to make there movies by selecting a position. 
def turns
  puts "#{@p1_name} your move?"
  p1_move = gets.chomp
  @board[p1_move] = @p1
  puts "#{@p2_name} where will your move be? Remember the last move occupied position #{p1_move}"
  p2_move = gets.chomp
  @board[p2_move] = @p2
end

#displays the status of the game thus far
def current_game
	puts " #{@board["1"]} | #{@board["2"]} | #{@board["3"]}"
  puts "-----------"
  puts " #{@board["4"]} | #{@board["5"]} | #{@board["6"]}"
  puts "-----------"
  puts " #{@board["7"]} | #{@board["8"]} | #{@board["9"]}"
end
turns
current_game
turns
current_game
turns
current_game

# runs through the @board hash. It pulls the values from the hash using the given keys which are
# the winning combinations.
# The values are placed into an array and compared to the win1 and win2 array to determine who has won. 
def game_status
  win1 = ["X", "X", "X"]
  win2 = ["O", "O", "O"]

  if @board.values_at('1','2','3') == win1
    puts "And the Winner is X"
  elsif @board.values_at('1','4','7') == win1
    puts "And the Winner is X"
  elsif @board.values_at('1','5','9') == win1
    puts "And the Winner is X"
  elsif @board.values_at('2','5','8') == win1
    puts "And the Winner is X"
  elsif @board.values_at('3','6','9') == win1
    puts "And the Winner is X"
  elsif @board.values_at('3','5','7') == win1
    puts "And the Winner is X"
  elsif @board.values_at('4','5','6') == win1
    puts "And the Winner is X"
  elsif @board.values_at('7','8','9') == win1
    puts "And the Winner is X"
  elsif @board.values_at('1','2','3') == win2
    puts "And the Winner is O"
  elsif @board.values_at('1','4','7') == win2
    puts "And the Winner is O"
  elsif @board.values_at('1','5','9') == win2
    puts "And the Winner is O"
  elsif @board.values_at('2','5','8') == win2
    puts "And the Winner is O"
  elsif @board.values_at('3','6','9') == win2
    puts "And the Winner is O"
  elsif @board.values_at('3','5','7') == win2
    puts "And the Winner is O"
  elsif @board.values_at('4','5','6') == win2
    puts "And the Winner is O"
  elsif @board.values_at('7','8','9') == win2
    puts "And the Winner is O"
  elsif 
    turns
  end
end

# it runs through game_status twice. I wanted to have it end as soon as a winner is called but I haven't figured
# out the appropriate logic for that just yet. So currently it runs to game_status twice and prints out the winner twice.
game_status
game_status
puts "game over"



