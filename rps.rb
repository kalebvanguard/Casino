
require "pry"

class RockPaperScissors

  def initialize(player)
    @player = player
    @cost = 100
    @win_amt = 200
    @lose_amt = 150
    @winnings = 0
    @lost = 0
  end

  def welcome
    if @player.bankroll.wallet >= @cost
      puts "Initial cost to play is $100, would you like to try your luck? (y/n)"
      user_input = gets.strip
      if user_input == "y"
        new_balance = @player.bankroll.minus_from_wallet(@cost)
        puts "Your new balance is: $#{new_balance}"
        choice
      elsif user_input == "n"
        puts "See ya"
      else
        puts "Hmm.. had too many drinks? Lets try that again:"
        welcome
      end
    else
      puts "You don't have enough monies :("  
    end
  end

  def start_game
    puts "Welcome to Rock Paper Scissors, #{@player.name}!"
    puts
    # welcome
    choice
  end

  def choice
    puts "Make your choice:"
    
    puts "1) Rock"
    puts "2) Paper"
    puts "3) Scissors"
    puts "4) Back to main menu"
    puts
    @choice = gets.to_i
    case @choice
    when 1
      puts "You chose: Rock"
      rock_case
    when 2
      puts "You chose: Paper"
      paper_case
    when 3
      puts "You chose: Scissors"
      scissors_case
    when 4
      # go_back = Casino.new
      # go_back.start_casino #<< works to take you back but it completely starts game over with new wallet and new player
      puts "Ok, back to the main menu it is"
      return
    else
      puts "Try again, (hint: pick a number 1-4)"
      @player.bankroll.add_to_wallet(@cost)
      start_game
    end

    if @player.bankroll.wallet >= @cost
      choice
    elsif @player.bankroll.wallet >= 0
      puts "You don't have enough monies :("
      return
      return
    else
      puts "You lost all your money, go home loser."
      exit
    end
  end

  def computer_choice
    random = rand(1..3)
  end

  def lose
    puts "Computer chose: Paper"
    puts "You loose $150!!"
    @lost += @lose_amt
    @player.bankroll.minus_from_wallet(@lose_amt)
    if @player.bankroll.wallet >= 0
      puts "New amount in wallet: $#{@player.bankroll.wallet}"
    else @player.bankroll.wallet <= 0
      puts "New amount in wallet: $0"
    end
  end

  def win
    puts "Computer chose: Scissors"
    puts "You win $200!!"
    @winnings += @win_amt
    puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@win_amt)}"
  end

  def tie
    puts "Computer chose: Rock"
    puts "Tie!"
    puts "Try again"
  end

  def rock_case
    computer_choice
    case computer_choice
    when 1
      tie
    when 2
      lose
    else
      win
    end  
  end

  def paper_case
  
    case computer_choice
    when 1
      win
    when 2
      tie
    else
      lose
    end
  end

  def scissors_case
  
    case computer_choice
    when 1
      lose
    when 2
      win
    else
      tie
    end
  end

end

