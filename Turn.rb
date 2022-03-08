class Turn 
  attr_accessor :player

  def initialize(player, question)
    @player = player
    @question = question
  end

  def ask_question
    puts "#{@player.name}: #{@question.question}"
  end

  def check_answer
    user_answer = gets.chomp.to_i

    if(@question.answer == user_answer)
      puts "YES! You are correct."
    else
      @player.score -= 1
      puts "Seriously? No!"
    end
  end

end