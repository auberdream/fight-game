class RunGame
  def initialize
    @hp = 10
    @me = 10
    @gameover = false
    @leave = false
  end

  def attack
    @hp -= rand(5)
    takedamage
    isanyonedead
  end

  def takedamage
    @me -= rand(5)
  end

  def scores
    puts ("[]" * @hp)
    puts "THEM"
    puts ("[]" * @me)
    puts "ME"
  end

  def isanyonedead
    if @hp <= 0
      puts "Yay"
      exit
    end
    if @me <= 0
      puts "Oh no"
      exit
    end
  end

  def fight
    while @gameover == false
      scores
      answer = gets.chomp
      if answer.downcase == "attack"
        attack
      end
    end
  end
end

game = RunGame.new
game.fight
