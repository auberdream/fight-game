class RunGame
  def initialize
    @hp = 6
    @me = 5
    @gameover = false
    @leave = false
    @answer = nil
  end

  def menu
    puts "Start                  Quit"
    puts "About                  ----"
    @answer = gets.chomp
    choices
  end

  def choices
    if @answer.downcase == "start"
      fight
    elsif @answer.downcase == "quit"
      exit
    elsif @answer.downcase == "about"
      about
    end
  end

  def attack
    @hp -= 2
    takedamage
    isanyonedead
  end

  def takedamage
    @me -= 2
  end

  def scores
    puts
    puts "            " + ("[]" * @hp)
    puts "            " + "THEM"
    puts
    puts
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
game.menu
