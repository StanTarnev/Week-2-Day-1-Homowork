class Team

  attr_accessor :team_name, :players, :coach, :coach


  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

  def new_player(name)
    @players.push(name)
  end

  def player_on_team(name)
    @players.include?(name)
  end

  def win_or_loss(result)
    if result == "win"
      @points += 4
    end
  end

end
