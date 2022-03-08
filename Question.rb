class Question
  attr_accessor :answer
  
    def initialize
      @answer
    end
    
    def question
      random1 = rand(1..20)
      random2 = rand(1..20)
      self.answer = random1 + random2 
      "What does #{random1} plus #{random2} equal?"
    end

    
end