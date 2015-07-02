require_relative 'player'
require_relative 'cpu_player'

class Game


  def initialize
    @rules = { "Paper"    => ["Scissors"],
               "Rock"     => ["Paper"],
               "Scissors" => ["Rock"] }

    @options = ["Rock", "Paper", "Scissors"]
  end

  def play(player_choice, cpu_choice)
    if player_choice.capitalize == cpu_choice.capitalize
      "CPU chooses #{cpu_choice} - It's a tie!"
    elsif
      @rules[player_choice].include? cpu_choice # implementation is a little confusing here
      "CPU chooses #{cpu_choice} - YOU LOSE!"
    else
      "CPU chooses #{cpu_choice} - YOU WIN!"
    end
  end

  def rock(versus:)
    play('Rock', versus)
  end

end
