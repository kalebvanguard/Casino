require "pry"

class Slots
  def initialize(player)
    @winnings
    @lost
    @lose_amt
    @win_amt
    @jackpot
  end

  def welcome
    puts
    puts
    puts "------------- ~ Initial cost to play is $100 ~ -------------" 
    puts "---------~ Would you like to try your luck? (y/n) ~ --------"
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
        puts "       Hmm.. had too many drinks? Lets try that again:       "
        puts
        welcome
      end
  end

  def pull_lever
  end

  def win
  end

  def lose
  end

  def jackpot
  end


end