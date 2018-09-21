class Player

    DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def name
    @name
  end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end

  def hp
    @hp
  end

end
