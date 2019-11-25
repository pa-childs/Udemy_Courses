class Player

  def play_game

    rand(1..100) > 50 ? "You Won" : " You Lose"

  end

end

penny = Player.new
milo = Player.new

def penny.play_game

  return "Penny Won"

end

p penny.play_game
p milo.play_game
puts

p penny.singleton_methods
p penny.singleton_class

p milo.singleton_methods
p milo.singleton_class
