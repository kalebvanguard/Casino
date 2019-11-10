require "pry"

class Slots
  def initialize(player)
    @winnings
    @cost = 25
    @win_amt = rand(5..50)
    @jackpot = 1000
  end

  def welcome
    puts
    puts
    puts "-------- ~ Cost to pull the lever each time is $25 ~ ---------" 
    puts
    puts "--------- ~ Would you like to try your luck? (y/n) ~ ---------"
    puts
    puts
    puts
    user_input = gets.strip
      if user_input == "y"
        start_game
      elsif user_input == "n"
        puts
        puts "       BYE!       "
        puts
      else
        puts
        puts "       Hmm... had too many drinks? Lets try that again:       "
        puts
        welcome
      end
  end

  def start_game
    puts
    puts "||.........................................................................||"
    puts
    puts "    ------------- ~ ~ Welcome to SLOTS, #{@player.name}! ~ ~ ------------    "
    puts
    puts "||.........................................................................||"
    puts
    puts
    puts
    puts "                        press enter to continue"
    gets
    system("clear")
    pull_lever
  end

  def pull_lever
    if @player.bankroll.wallet >= @cost
      @player.bankroll.minus_from_wallet(@cost)

      value_1 = rand(1..5)
      value_2 = rand(1..5)
      value_3 = rand(1..5)

      if value_1 == value_2 == value_3
        jackpot
        play_again
      elsif value_1 == value_2 || value_1 == value_3 || value_2 == value_3
        win
        play_again
      else
        lose
        play_again
      end
    elsif @player.bankroll.wallet >= 0
      puts "        You didn't have enough monies to play again :(        "
      puts
      puts
      puts
    else
      puts ".......... You lost all your money, go home loser .........."
      puts
      puts
      exit
    end
  end

  def play_again
    puts "Want to play again? (y/n)"
    case gets.strip
    when "y"
      pull_lever
    else
      puts "BYE!!"
      return
    end
  end

  def win
    puts
    puts "Congrats, you WIN $#{@win_amt}!!"
    puts
    @player.bankroll.add_to_wallet(@win_amt)
  end

  def lose
    puts 
    puts "Oh no!! You LOST !!"
  end

  def jackpot
    puts
    puts "  WOW! JACKPOT!!!"
    puts
    puts "You WIN $#{@jackpot}!!"
    puts
    @player.bankroll.add_to_wallet(@jackpot)
  end


end