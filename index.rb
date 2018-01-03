class RunGame
  def initialize
    @hp = rand(10..18)
    @me = 15
    @gameover = false
    @answer = nil
  end

  def menu
    puts "Start                  Quit"
    puts "About              Instructions"
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
    @hp -= 10
    takedamage
    isanyonedead
  end

  def takedamage
    @me -= 10
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
      again_maybe
    end
    if @me <= 0
      puts "Oh no"
      again_maybe
    end
  end

  def fight
    while @gameover == false
      scores
      fight_choices
      answer = gets.chomp
      if answer.downcase == "attack"
        attack
      end
    end
  end

  def fight_choices
    puts "___________________________"
    puts "Attack               Defend"
    puts "---------------------------"
  end

  def again_maybe
    puts "Restart                Exit"
    @answer = gets.chomp
    if @answer.downcase == "restart"
      @hp = rand(10..18)
      @me = 15
      fight
    elsif @answer.downcase == "exit"
      exit
    end
  end

  def test
    true
  end
end

game = RunGame.new
game.menu
