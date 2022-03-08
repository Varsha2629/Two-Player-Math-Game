
class Game 
  SCORE = 3
  @@current_turn = 1
  
  def initialize(player1, player2, turn)
    @player1 = player1
    @player2 = player2
    @turn = turn

  end
  def play
    p1_score = SCORE
    p2_score = SCORE

    while @turn.player.score > 0 
      @turn.ask_question 
      @turn.check_answer

      @@current_turn += 1
      # counting the score
      if @turn.player.name == "Player 1" 
        p1_score = @turn.player.score
      else
        p2_score = @turn.player.score
      end

      puts "P1: #{p1_score}/#{SCORE} vs P2: #{p2_score}/#{SCORE}"

      

      # Game Over message
      if @turn.player.score == 0
        # Display the winner
         puts @turn.player.name == "Player1" ? "player2 wins with a score of #{p2_score}/#{SCORE}" : "player1 wins with a score of #{p1_score}/#{SCORE}"

        puts "--Game Over--"
        puts "GoodBye"
        exit(0)
      end

        # To change the player for next turn
      puts "--Next Turn--"
      if @@current_turn % 2 == 0 
          @turn.player = @player2
      else
        # current_player = @player1
        @turn.player = @player1
      end  
     
      
   end

  end
end