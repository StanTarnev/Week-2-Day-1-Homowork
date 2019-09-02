require('minitest/autorun')
require('minitest/rg')
require_relative(('../team.rb'))

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Boars", ["Ingvar", "Fabrizio"], "Jesus", 0)
  end

  def test_team_name
    assert_equal("Boars", @team.team_name())
  end

  def test_players
    assert_equal(["Ingvar", "Fabrizio"], @team.players())
  end

  def test_coach
    assert_equal("Jesus", @team.coach())
  end

  def test_set_coach
    @team.coach = "Hamza"
    assert_equal("Hamza", @team.coach())
  end

  def test_new_player
    assert_equal(["Ingvar", "Fabrizio", "Gerhart"], @team.new_player("Gerhart"))
  end

  def test_player_on_team
    assert_equal(true, @team.player_on_team("Ingvar"))
  end

  def test_win_or_loss
    assert_equal(4, @team.win_or_loss("win"))
  end

end
