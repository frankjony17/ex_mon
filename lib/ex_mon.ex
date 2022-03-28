
defmodule ExMon do
  alias ExMon.{Game, Player}

  @computer_game = "Robotinik"

  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    @computer_game |> create_player(:punch, :kick, :heal) |> Game.start(player)
  end

  IO.puts "Started OK..."
end
