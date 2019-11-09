
require "pry"

class RockPaperScissors

  def initialize(player)
    @player = player
    @cost = 100
    @win_amt = 200
    @winnings = 0
  end

  def welcome
    if @player.bankroll.wallet >= @cost
      puts "Cost to play is $100, would you like to try your luck? (y/n)"
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
    welcome
  end

  def choice
    puts "Make your choice:"
    puts "1) Rock"
    puts "2) Paper"
    puts "3) Scissors"
    puts "4) Back to main menu"
    puts "5) Exit"
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
      puts "Ok, back to main menu it is"
    when 5
      puts "Goodbye!"
    else
      puts "Try again, (hint: pick a number)"
      @player.bankroll.add_to_wallet(@cost)
      welcome
    end
    
  end

  def computer_choice
    random = rand(1..3)
  end

  def rock_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "Tie!"
      puts "Try again"
    when 2
      puts "Computer chose: Paper"
      puts "You loose!!"
    else
      puts "Computer chose: Scissors"
      puts "You win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    end  
  end

  def paper_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "You win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    when 2
      puts "Computer chose: Paper"
      puts "Tie!"
      puts "Try again"
    else
      puts "Computer chose: Scissors"
      puts "You loose!!"
    end
  end

  def scissors_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "You loose!!"
    when 2
      puts "Computer chose: Paper"
      puts "You Win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    else
      puts "Computer chose: Scissors"
      puts "Tie!"
      puts "Try again"
    end
  end

end
